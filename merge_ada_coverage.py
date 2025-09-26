
#!/usr/bin/env python3
"""
merge_ada_coverage.py

Scan an SFP aggregate report (C/C++) for missing coverage of Ada files,
and copy the Ada metrics/sections from a TU (Ada) aggregate report.

What it does (best-effort, non-destructive):
- Detects Ada files by extension: .adb, .ads, .ada (case-insensitive).
- For both "Aggregate Coverage" and "MC/DC Condition Tables" sections:
  * Reads which Ada files already exist in SFP.
  * Finds the corresponding Ada sections in TU.
  * Appends any missing Ada sections to the same sections in SFP.
  * Tries to add matching entries into the Table of Contents (TOC).
- If a target section isn't found in SFP, creates a new block at the end titled
  "Imported Ada Coverage (from TU)" and inserts there instead.
- Writes a new file: sfp_agg_merged.html (by default next to the original).

Usage:
  python merge_ada_coverage.py --tu /path/to/tu_agg.html --sfp /path/to/sfp_agg.html --out /path/to/sfp_agg_merged.html

If --out is omitted, defaults to creating <sfp_dir>/sfp_agg_merged.html
"""

import argparse
import sys
import re
from pathlib import Path
from bs4 import BeautifulSoup

ADA_EXTS = ('.adb', '.ads', '.ada')

def is_ada_filename(name: str) -> bool:
    name_l = name.lower()
    return name_l.endswith(ADA_EXTS)

def get_text(el):
    return el.get_text(strip=True) if el else ""

def find_report_body(soup: BeautifulSoup):
    # Standard VectorCAST template uses a div.report-body
    rb = soup.find("div", class_="report-body")
    return rb or soup

def find_section_by_anchor_text(soup: BeautifulSoup, anchor_id: str, header_tag="h2"):
    """
    Find the report section that starts with <h2><a id="{anchor_id"}></a>...</h2>
    Return the encompassing report-block or report-block-coverage div if possible.
    """
    anc = soup.find("a", id=anchor_id)
    if not anc:
        return None
    # Up to header
    hdr = anc.find_parent(header_tag)
    # Up to the container block
    if hdr:
        for parent in hdr.parents:
            if parent.name == "div" and ("report-block" in parent.get("class", []) or "report-block-coverage" in parent.get("class", [])):
                return parent
    return None

def parse_toc_file_entries_under(label_li) -> list:
    """
    Given the <li> in the TOC that wraps a collapsible section, gather file entries beneath it.
    Returns a list of (text, href) tuples.
    """
    results = []
    if not label_li:
        return results
    ul = label_li.find("ul")
    if not ul:
        return results
    for li in ul.find_all("li", recursive=False):
        a = li.find("a")
        if not a:
            continue
        text = a.get_text(strip=True)
        href = a.get("href", "")
        results.append((text, href))
    return results

def toc_find_section_li(toc_root, title_text: str):
    """Find the TOC <li> whose title/label text matches title_text (e.g., 'MC/DC Condition Tables')."""
    if not toc_root:
        return None
    # In the provided template, title is a top-level <li class="collapsible-toc" title="MC/DC Condition Tables">
    # We'll try several heuristics.
    # 1) match by title attr
    for li in toc_root.find_all("li", recursive=False):
        if li.get("title") and title_text.lower() in li.get("title","").lower():
            return li
    # 2) otherwise, look deeper
    for li in toc_root.find_all("li"):
        if li.get("title") and title_text.lower() in li.get("title","").lower():
            return li
        lab = li.find("label")
        if lab and title_text.lower() in lab.get_text(strip=True).lower():
            return li
    return None

def add_toc_entry(toc_section_li, text: str, href_target: str):
    """Append a new <li><a href="#...">text</a></li> under a TOC collapsible section <li>."""
    if not toc_section_li:
        return False
    ul = toc_section_li.find("ul")
    if not ul:
        ul = toc_section_li.new_tag("ul")
        toc_section_li.append(ul)
    new_li = toc_section_li.new_tag("li")
    new_a = toc_section_li.new_tag("a", href=href_target)
    new_a.string = text
    new_li.append(new_a)
    ul.append(new_li)
    return True

def collect_sfp_present_ada_files(sfp_soup: BeautifulSoup):
    """Return a set of Ada filenames already present in SFP (from TOC + headings)."""
    present = set()

    # 1) From TOC "MC/DC Condition Tables": entries like "File: manager.adb"
    toc = sfp_soup.find("ul", class_="toc-level1")
    mcdc_li = toc_find_section_li(toc, "MC/DC Condition Tables")
    if mcdc_li:
        for text, href in parse_toc_file_entries_under(mcdc_li):
            # Strip "File: " prefix if present
            file_name = text.replace("File:", "").strip()
            if is_ada_filename(file_name):
                present.add(file_name)

    # 2) From MC/DC headings in the body: <h3><a id="mcdc_unit_42">File: manager.adb</a></h3>
    for h3 in sfp_soup.find_all("h3"):
        a = h3.find("a", id=re.compile(r"^mcdc_unit_\d+$"))
        if a:
            text = h3.get_text(strip=True)
            if text.lower().startswith("file:"):
                file_name = text.split(":",1)[1].strip()
                if is_ada_filename(file_name):
                    present.add(file_name)

    # 3) From Aggregate Coverage section anchors: <a id="coverage_for_file_49">manager.c</a>
    cov_block = find_section_by_anchor_text(sfp_soup, "AggregateCoverage")
    if cov_block:
        for a in cov_block.find_all("a", id=re.compile(r"^coverage_for_file_\d+$")):
            fname = a.get_text(strip=True)
            if is_ada_filename(fname):
                present.add(fname)

    return present

def collect_tu_ada_sections(tu_soup: BeautifulSoup):
    """
    Collect Ada sections from TU for both MC/DC and Aggregate Coverage.
    Returns dicts keyed by filename:
      mcdc_sections[filename] = the container Element (block of rows/tables) with the MC/DC content
      cov_sections[filename]  = the specific table rows or row block for that file under aggregate coverage
      Also include corresponding TOC entry text and anchor href targets for easier placement.
    """
    mcdc_sections = {}
    cov_sections  = {}
    mcdc_toc = {}
    cov_toc = {}

    # MC/DC: look for h3 with <a id="mcdc_unit_*"> and text "File: <name>"
    report_body = find_report_body(tu_soup)
    for h3 in report_body.find_all("h3"):
        a = h3.find("a", id=re.compile(r"^mcdc_unit_\d+$"))
        if not a:
            continue
        text = h3.get_text(strip=True)
        if not text.lower().startswith("file:"):
            continue
        fname = text.split(":",1)[1].strip()
        if not is_ada_filename(fname):
            continue
        # The MC/DC section appears to be a block starting at this header up to the next h3 or end.
        # We'll take the parent block (e.g., div.mcdc-condition or the surrounding container).
        # Safer approach: take the nearest container that includes the heading and its tables (a parent .report-block or the following siblings until next h3).
        # We'll gather all siblings until next h3.
        section_nodes = [h3]
        for sib in h3.find_all_next():
            if sib.name == "h3":
                break
            # Stop at the next h3
            section_nodes.append(sib)
            # Heuristic: limit runaway capture
            if len(section_nodes) > 5000:
                break

        # Wrap them into a fragment container
        wrapper = tu_soup.new_tag("div")
        for node in section_nodes:
            wrapper.append(node.extract())

        mcdc_sections[fname] = wrapper
        # TOC target is the anchor's id
        mcdc_toc[fname] = f"#{a.get('id')}"

    # Aggregate Coverage: anchors id="coverage_for_file_*" whose text is the filename
    cov_block = find_section_by_anchor_text(tu_soup, "AggregateCoverage")
    if cov_block:
        # The rows are typically grouped by file, with a clickable +/- rows; we'll capture the top level row(s) for each matching file name
        # Strategy: find each file anchor; take its parent row and any immediately following "ips" rows belonging to same group (same class suffix).
        for a in cov_block.find_all("a", id=re.compile(r"^coverage_for_file_\d+$")):
            fname = a.get_text(strip=True)
            if not is_ada_filename(fname):
                continue
            # Row of the file label
            tr = a.find_parent("tr")
            if not tr:
                continue
            rows = [tr]
            # Grab subsequent hidden rows for this file if they share a class token present on the anchor row (e.g., expansion classes)
            anchor_classes = set(tr.get("class", []))
            nxt = tr.find_next_sibling("tr")
            while nxt:
                nxt_classes = set(nxt.get("class", []))
                # If it shares any expansion class marker (heuristic: class starting with "ips" or matching a subset), keep collecting
                if anchor_classes.intersection(nxt_classes) or "ips" in nxt.get("class", []):
                    rows.append(nxt)
                    nxt = nxt.find_next_sibling("tr")
                    continue
                break

            # package them into <tbody> fragment for reinsertion
            frag = tu_soup.new_tag("tbody")
            for r in rows:
                frag.append(r.extract())
            cov_sections[fname] = frag
            cov_toc[fname] = f"#{a.get('id')}"

    return mcdc_sections, cov_sections, mcdc_toc, cov_toc

def ensure_block_exists_or_create(soup: BeautifulSoup, anchor_id: str, block_title: str, block_class: str = "report-block"):
    """Ensure a section exists in the SFP; if not, create a new one at the end of report-body."""
    block = find_section_by_anchor_text(soup, anchor_id)
    if block:
        return block
    # Create a new block at the end
    report_body = find_report_body(soup)
    new_block = soup.new_tag("div", **{"class": block_class})
    row = soup.new_tag("div", **{"class": "row"})
    h2 = soup.new_tag("h2")
    a = soup.new_tag("a", id=anchor_id)
    h2.append(a)
    h2.append(block_title)
    row.append(h2)
    ret = soup.new_tag("div", **{"class": "return-to-top"})
    span = soup.new_tag("span", **{"class": "pull-right"})
    top_a = soup.new_tag("a", href="#TableOfContents")
    top_a.string = "Top"
    span.append(top_a)
    ret.append(span)
    row.append(ret)
    new_block.append(row)
    report_body.append(new_block)
    return new_block

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--tu", required=True, help="Path to tu_agg.html (Ada aggregate)")
    ap.add_argument("--sfp", required=True, help="Path to sfp_agg.html (C/C++ aggregate)")
    ap.add_argument("--out", default="", help="Output path (merged SFP). Default: <sfp_dir>/sfp_agg_merged.html")
    args = ap.parse_args()

    tu_path = Path(args.tu)
    sfp_path = Path(args.sfp)
    out_path = Path(args.out) if args.out else sfp_path.with_name("sfp_agg_merged.html")

    tu_html = tu_path.read_text(encoding="utf-8", errors="ignore")
    sfp_html = sfp_path.read_text(encoding="utf-8", errors="ignore")

    tu_soup = BeautifulSoup(tu_html, "lxml")
    sfp_soup = BeautifulSoup(sfp_html, "lxml")

    # Collect existing Ada filenames in SFP
    present = collect_sfp_present_ada_files(sfp_soup)

    # Collect Ada sections from TU
    mcdc_sections, cov_sections, mcdc_toc, cov_toc = collect_tu_ada_sections(tu_soup)

    added_mcdc = []
    added_cov = []

    # Ensure target blocks exist in SFP
    cov_block = ensure_block_exists_or_create(sfp_soup, "AggregateCoverage", "Aggregate Coverage", "report-block-coverage")
    mcdc_block = ensure_block_exists_or_create(sfp_soup, "MC/DC Condition Tables", "MC/DC Condition Tables", "report-block")

    # Find their internal containers (tables etc.). If none, create a simple table container.
    # For Aggregate Coverage, there should be a table already; if not, create one.
    cov_table = cov_block.find("table")
    if not cov_table:
        cov_table = sfp_soup.new_tag("table", **{"class":"table table-hover sfp-table"})
        cov_block.append(cov_table)

    # MC/DC often consists of multiple "mcdc-condition" blocks following headers. We'll just append fragments directly to mcdc_block.
    # TOC handling
    toc_root = sfp_soup.find("ul", class_="toc-level1")
    toc_mcdc_li = toc_find_section_li(toc_root, "MC/DC Condition Tables")
    toc_cov_li  = toc_find_section_li(toc_root, "Aggregate Coverage")

    # Insert missing Ada items
    tu_filenames = set(mcdc_sections.keys()).union(cov_sections.keys())
    for fname in sorted(tu_filenames):
        if fname in present:
            continue
        # MC/DC section insertion (if available)
        if fname in mcdc_sections:
            mcdc_block.append(mcdc_sections[fname])
            added_mcdc.append(fname)
            # Update TOC for MC/DC
            if toc_mcdc_li:
                # We don't know final anchor in merged doc; use the original TU anchor if present
                href = mcdc_toc.get(fname, "#")
                add_toc_entry(toc_mcdc_li, f"File: {fname}", href)

        # Aggregate coverage insertion (if available)
        if fname in cov_sections:
            # Ensure table has tbody to append into
            tbody = cov_table.find("tbody")
            if not tbody:
                tbody = sfp_soup.new_tag("tbody")
                cov_table.append(tbody)
            # Append row fragment
            tbody.append(cov_sections[fname])
            added_cov.append(fname)
            # Update TOC for coverage
            if toc_cov_li:
                href = cov_toc.get(fname, "#")
                add_toc_entry(toc_cov_li, fname, href)

    # Mark the file as merged (insert a small note at end)
    report_body = find_report_body(sfp_soup)
    note = sfp_soup.new_tag("div", **{"class":"report-block"})
    row = sfp_soup.new_tag("div", **{"class":"row"})
    h4 = sfp_soup.new_tag("h4")
    h4.string = "Note"
    row.append(h4)
    p = sfp_soup.new_tag("p")
    p.string = f"Imported Ada coverage for {len(set(added_mcdc).union(added_cov))} files from TU aggregate report."
    row.append(p)
    note.append(row)
    report_body.append(note)

    out_path.write_text(str(sfp_soup), encoding="utf-8", errors="ignore")

    # Simple summary to stdout
    unique_added = sorted(set(added_mcdc).union(added_cov))
    print("Merged output:", out_path)
    print("Added MC/DC for:", ", ".join(added_mcdc) if added_mcdc else "(none)")
    print("Added Coverage rows for:", ", ".join(added_cov) if added_cov else "(none)")
    print("Added (unique files):", ", ".join(unique_added) if unique_added else "(none)")

if __name__ == "__main__":
    sys.exit(main())
