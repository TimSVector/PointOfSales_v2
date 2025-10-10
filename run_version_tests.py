#run_versions_tests.py

import os, sys
import subprocess
import argparse

from datetime import datetime
from pprint import pprint

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('-x', '--2018',   help='Run the tests on the 2018_fast_test project', action="store_true", dest="run_2018", default=False)
    parser.add_argument('-m', '--post',   help='Run the tests on the PoST project',           action="store_true", dest="run_post", default=False)
    parser.add_argument('-p', '--plugin', help='Run the tests on the PluginTesting',          action="store_true", dest="run_plgn", default=False)
    parser.add_argument('--copy_extract', help='Run the copy/extract test',                   action="store_true", dest="run_copy_extract", default=False)
    parser.add_argument('-a', '--all',    help='Run all the tests',                           action="store_true", dest="run_all", default=False)
    parser.add_argument('--new_css',      help='Run tests against the new CSS files',         action="store_true", dest="run_new_css", default=False)
    parser.add_argument('--vc_scripts_submodule',      help='Run tests against the new CSS files',         action="store_true", dest="vc_scripts_submodule", default=False)
    parser.add_argument('--vc_version',   help='Run specified test for specifc VC version',   action="store",      dest="vc_version", default=None)
    parser.add_argument('--quick',        help='Run very quick test.  Uses Statement+Branch as coverage type',     action="store_true", dest="quick_test", default=False)
    parser.add_argument('--dryrun',       help='Prints all command that would be run',        action="store_true", dest="dryrun", default=False)
    parser.add_argument('--verbose',       help='Enable verbose output',        action="store_true", dest="verbose", default=False)

    parser.add_argument(
        '--cov_types',
        nargs='+',   # <-- allows multiple values
        choices=[
            'STATEMENT+MC/DC',
            'STATEMENT+BRANCH',
            'FUNCTION+FUNCTION_CALL',
            'FUNCTION',
            'MC/DC',
            'BRANCH',
            'STATEMENT'
        ],
        default=[
            'STATEMENT+MC/DC',
            'STATEMENT+BRANCH',
            'FUNCTION+FUNCTION_CALL',
            'FUNCTION',
            'MC/DC',
            'BRANCH',
            'STATEMENT'
        ],  # list default since nargs='+'
        action='store',
        dest='cov_types',
        help='Run specified test for specific coverage types [default is STATEMENT+BRANCH]. For multiple coverage types just list covearge types in a spaced list like this: STATEMENT STATEMENT+MC/DC'
    )

    os.environ['WORKSPACE'] = os.getcwd()

    args = parser.parse_args()

    if args.run_all:
        args.run_2018 = True
        args.run_post = True
        args.run_plgn = True
        args.run_new_css = True

    if args.vc_scripts_submodule:
        os.environ['VCAST_VC_SCRIPTS'] = r'D:\vector\github\vc_scripts_submodule'

    if args.vc_version and os.path.exists("c:/vcast/"+args.vc_version):
        os.environ['VC_VERSION'] = args.vc_version
    elif args.vc_version:
        print("VC Version: " + args.vc_version + " does not exist. Exiting")
        sys.exit()

    return args

def run_command(args, callCmd):

    if os.name == "nt":
        callCmd[0] = callCmd[0].replace("/","\\")
    else:
        callCmd[0] = callCmd[0].replace("\\","/")

    if not args.dryrun:
        if args.verbose:
            print(" ".join(callCmd))

        p = subprocess.Popen(callCmd, universal_newlines=True)
        p.wait()
        
    else:
        print(" ".join(callCmd))

def run_test_versions_bat(args, directory):

    if args.quick_test:
        print("Quick Test: " + str(args.quick_test))
        cli_args = ["SFP IMPORT MODIFY DO_MERGE                "]
        args.cov_types = ['STATEMENT+BRANCH']
    else:
        cli_args = ["                                          ",
                    "            MODIFY                        ",
                    "    IMPORT                                ",
                    "    IMPORT        DO_MERGE                ",
                    "    IMPORT MODIFY                         ",
                    "    IMPORT MODIFY DO_MERGE                ",
                    "SFP                                       ",
                    "SFP        MODIFY                         ",
                    "SFP IMPORT                                ",
                    "SFP IMPORT        DO_MERGE                ",
                    "SFP IMPORT MODIFY                         ",
                    "SFP IMPORT MODIFY DO_MERGE                "]

    for coverage_type in args.cov_types:
        os.environ['VCAST_CODE_COVERAGE_TYPE'] = coverage_type
        for cargs in cli_args:
            callCmd = [directory + "\\test_versions.bat"] + cargs.split()
            if not args.dryrun: print(callCmd)
            run_command(args, callCmd)

def run_copy_extract_test(args):

    directories = ["2018_fast_test", "CurrentRelease/vcast-workarea/vc_manage"]

    run_dirs = []
    if args.run_2018:
        run_dirs.append(directories[0])

    if args.run_post:
        run_dirs.append(directories[1])

    for directory in run_dirs:
        for coverage_type in args.cov_types:

            os.environ['VCAST_CODE_COVERAGE_TYPE'] = coverage_type

            callCmd = [directory + "\\test_versions.bat", os.environ['VECTORCAST_DIR'] ,"COPY_EXTRACT"]

            run_command(args, callCmd)
            if not args.dryrun and not os.path.exists("copy_extract_full_status.html"):
                sys.exit("Missing copy_extract_full_status.html")


def run_plugin(args):

    ## Additional tests -- plugin testing
    os.environ['VECTORCAST_DIR'] = r'C:\VCAST\2024sp6'
    run_command(args, ["PluginTestRunner.bat"])

def run_new_css(args):

    ## Additional tests -- plugin testing
    vcd = r'c:\vcast\vc25_rc1'
    os.environ["VECTORCAST_DIR"] = vcd
    os.environ["VECTOR_LICENSE_FILE"] = r'7650@vadcpctlic1.vi.vector.int'

    if not os.path.exists(vcd + "/manage.exe"):
        print("Can't find ", vcd + "/manage.exe - skipping new_css test")
        return

    cmdStr = vcd + "/manage -p 2018_fast_test/2018_fast_test --clean"
    run_command(args, cmdStr.split())

    cmdStr = vcd + "/manage -p 2018_fast_test/2018_fast_test --build-execute"
    run_command(args, cmdStr.split())

    ccsFiles = ["default", "condensed", "dark_mode", "rounded", "drop_shadow"]
    for cssFile in ccsFiles:

        if cssFile == "default":
            cmdStr = vcd + "/manage -p 2018_fast_test/2018_fast_test.vcm --unset-config VCAST_RPTS_CUSTOM_CSS"
        else:
            cmdStr = vcd + "/manage -p 2018_fast_test/2018_fast_test.vcm --config VCAST_RPTS_CUSTOM_CSS=" + cssFile
        run_command(args, cmdStr.split())

        cmdStr = vcd + "/vpython vc_scripts/full_report_no_toc.py 2018_fast_test/2018_fast_test.vcm"
        run_command(args, cmdStr.split())

        if not args.dryrun:
            import glob
            import shutil

            destination_dir = "./htmls/" + cssFile

            try:
                shutil.rmtree(destination_dir)
            except:
                pass

            os.makedirs(destination_dir, exist_ok=True)

            for file in glob.glob("*.html*"):
                shutil.move(file, destination_dir)

if __name__ == '__main__':

    startDT = datetime.now()

    args = parse_args()

    dt2018 = datetime.now()
    if args.run_2018:
        run_test_versions_bat(args,"2018_fast_test")

    dtPost = datetime.now()

    if args.run_post:
        run_test_versions_bat(args,"CurrentRelease/vcast-workarea/vc_manage")

    copyExtDT = datetime.now()
    if args.run_new_css:
        run_copy_extract_test(args)

    pluginDT = datetime.now()
    if args.run_plgn:
        run_plugin(args)

    newCssDT = datetime.now()
    if args.run_new_css:
        run_new_css(args)

    endDT = datetime.now()

    if not args.dryrun:
        print("2018    : " + str(dtPost-dt2018))
        print("PoST    : " + str(copyExtDT-dtPost))
        print("CopyExt : " + str(pluginDT-copyExtDT))
        print("Plugin  : " + str(newCssDT-pluginDT))
        print("New CSS : " + str(endDT-newCssDT))
        print("Total   : " + str(endDT-startDT))
    else:
        print("Dry run complete")



