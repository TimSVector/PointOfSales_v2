import copy
from pathlib import Path

from bs4 import BeautifulSoup
from bs4.element import Tag



def get_ada_aggregate_coverage_elements(soup: BeautifulSoup):
    aggregate_li = soup.find('li', {'title': 'Aggregate Coverage'})

    lis = []
    aggregate_coverage_ids = []

    for li in aggregate_li.find('ul').find_all('li'):
        a = li.find('a')
        if a.text.endswith('.adb'):
            aggregate_coverage_ids.append(a['href'].lstrip('#'))
            lis.append(li)

    ret = []

    aggregate_coverage_div = soup.find('div', {'class': 'report-block-coverage'})
    for li, _id in zip(lis, aggregate_coverage_ids):
        div = aggregate_coverage_div.find('a', id=_id).parent.parent.parent
        elements = [div]
        for sib in div.next_siblings:
            if not isinstance(sib, Tag):
                continue
            if sib.name == 'div' and 'row' in sib['class']:
                break
            elements.append(sib)

        ret.append((li, elements))

    return ret


def get_ada_mcdc_elements(soup: BeautifulSoup):
    ret = []

    for a in soup.find_all('a', id=lambda x: x and x.startswith('mcdc_unit_')):
        if not a.parent.text.endswith('.adb'):
            continue
        div = a.parent.parent
        li = soup.find('a', {'href': f'#{a["id"]}'}).parent
        ret.append((li, div))

    return ret


def get_ada_metrics_elements(soup: BeautifulSoup):
    a = soup.find('a', id='Metrics')
    div = a.parent.parent.parent

    ret = []
    elements = []
    appending = False

    for tr in div.find('table').find('tbody').find_all('tr'):
        tds = tr.find_all('td') or tr.find_all('th')
        if tds[0].text.endswith('.adb'):
            appending = True
            elements.append(tr)
            continue
        if appending:
            elements.append(tr)
            if 'TOTALS' in tds[0].text:
                ret.append(tuple(elements))
                elements = []
                appending = False

    return ret


def remove_original_ada_content(soup: BeautifulSoup):
    # aggregate coverage
    for li, elements in get_ada_aggregate_coverage_elements(soup):
        for element in elements:
            element.decompose()
        li.decompose()
    for a in soup.find_all('a', id=lambda x: x and x.startswith('coverage_for_file_')):
        h3 = a.parent
        if h3.text.endswith('.adb'):
            h3.parent.parent.decompose()

    # mcdc tables
    for li, div in get_ada_mcdc_elements(soup):
        li.decompose()
        div.decompose()

    # metrics table
    for res in get_ada_metrics_elements(soup):
        for tr in res:
            tr.decompose()


def put_new_content_in_place(old_soup: BeautifulSoup, new_soup: BeautifulSoup):
    # aggregate coverage
    aggregate_ul = old_soup.find('li', {'title': 'Aggregate Coverage'}).find('ul')
    aggregate_coverage_div = old_soup.find('div', {'class': 'report-block-coverage'})

    for li, elements in get_ada_aggregate_coverage_elements(new_soup):
        aggregate_ul.append(copy.copy(li))
        for element in elements:
            aggregate_coverage_div.append(copy.copy(element))

    # mcdc tables
    mcdc_ul = old_soup.find('li', {'title': 'MC/DC Condition Tables'}).find('ul')
    mcdc_div = old_soup.find('a', id=lambda x: x and x.startswith('mcdc_unit_')).parent.parent.parent

    for li, div in get_ada_mcdc_elements(new_soup):
        mcdc_ul.append(copy.copy(li))
        mcdc_div.append(copy.copy(div))

    # metrics table
    a = old_soup.find('a', id='Metrics')
    div = a.parent.parent.parent
    tbody = div.find('table').find('tbody')
    for res in get_ada_metrics_elements(new_soup):
        for tr in reversed(res):
            tbody.insert(0, copy.copy(tr))


def main(original_coverage_file: Path, ada_coverage_report: Path):
    with open(original_coverage_file, 'r', encoding='utf-8') as f:
        original_coverage = BeautifulSoup(f, 'html.parser')

    with open(ada_coverage_report, 'r', encoding='utf-8') as f:
        ada_coverage = BeautifulSoup(f, 'html.parser')

    remove_original_ada_content(original_coverage)
    put_new_content_in_place(original_coverage, ada_coverage)

    output_file = 'merged_coverage.html'
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(str(original_coverage))
    print(f'Wrote merged coverage to {output_file}')


if __name__ == '__main__':
    import argparse

    parser = argparse.ArgumentParser(description='Merge coverage reports')
    parser.add_argument('original_coverage_file', type=Path, help='Path to the original coverage file')
    parser.add_argument('ada_coverage_report', type=Path, help='Path to the ada coverage report')
    args = parser.parse_args()

    assert args.original_coverage_file.exists()
    assert args.ada_coverage_report.exists()

    main(args.original_coverage_file, args.ada_coverage_report)
