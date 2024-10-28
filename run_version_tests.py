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
    parser.add_argument('--vc_version',   help='Run specified test for specifc VC version',   action="store",      dest="vc_version", default=None)
    parser.add_argument('--quick',        help='Run very quick test',                         action="store_true", dest="quick_test", default=False)
    parser.add_argument('-c', '--cov_types',   
        help='Run specified test for specifc coverage types [default is all] (STATEMENT+MC/DC,STATEMENT+BRANCH,FUNCTION+FUNCTION_CALL,FUNCTION,MC/DC,BRANCH,STATEMENT)',   
        action="store", 
        dest="cov_types", 
        default=None)

    os.environ['WORKSPACE'] = os.getcwd()
    
    args = parser.parse_args()
    
    if args.run_all:
        args.run_2018 = True
        args.run_post = True
        args.run_plgn = True
        args.run_new_css = True
    
    if args.vc_version and os.path.exists("c:/vcast/"+args.vc_version):
        os.environ['VC_VERSION'] = args.vc_version
    elif args.vc_version:
        print("VC Version: " + args.vc_version + " does not exist. Exiting")
        sys.exit()
        
    return args
    
def get_coverage_types(args):
    if args.cov_types is None:
        coverage_types = ["STATEMENT+MC/DC ","STATEMENT+BRANCH ","FUNCTION+FUNCTION_CALL","FUNCTION","MC/DC","BRANCH","STATEMENT"]
    else:
        coverage_types = args.cov_types.split(",")
        
    return coverage_types
        

def run_test_versions_bat(args, directory):
    coverage_type  = get_coverage_types()
        
    if args.quick_test:
        print("Quick Test: ", args.quick_test)
        cli_args = "SFP IMPORT MODIFY DO_MERGE                "        
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
    
    for coverage_type in coverage_types:
        os.environ['VCAST_CODE_COVERAGE_TYPE'] = coverage_type
        for cargs in cli_args:
            callCmd = [directory + "\\test_versions.bat"] + cargs.split()
            p = subprocess.Popen(callCmd, universal_newlines=True)
            p.wait()
            
def run_copy_extract_test(args):
    
    coverage_types = get_coverage_types(args)

    directories = ["2018_fast_test", "CurrentRelease/vcast-workarea/vc_manage"]
    
    if args.run_2018:
        run_dirs.append(directories[0])
        
    if args.run_post:
        run_dirs.append(directories[1])
    
    for directory in run_dirs:
        for coverage_type in coverage_types:
            
            os.environ['VCAST_CODE_COVERAGE_TYPE'] = coverage_type            
            
            callCmd = [directory + "\\test_versions.bat", os.environ['VECTORCAST_DIR'] ,"COPY_EXTRACT"]     

            p = subprocess.Popen(callCmd, universal_newlines=True)
            p.wait()
            if not os.path.exists("copy_extract_full_status.html"):
                sys.exit("Missing copy_extract_full_status.html")


def run_plugin(args):

    ## Additional tests -- plugin testing
    for vcd in [r'C:\VCAST\2024sp3']:
        os.environ['VECTORCAST_DIR'] = vcd
        p = subprocess.Popen(["PluginTestRunner.bat"], universal_newlines=True)
        p.wait()
    
def run_new_css(args):

    ## Additional tests -- plugin testing
    vcd = r'c:\vcast\vc25_nightly'
    os.environ["VECTORCAST_DIR"] = vcd
    os.environ["VECTOR_LICENSE_FILE"] = r'7650@vadcpctlic1.vi.vector.int'
    
    cmdStr = vcd + "/manage -p 2018_fast_test/2018_fast_test --clean"
    p = subprocess.Popen(cmdStr.split(), universal_newlines=True)
    p.wait()

    cmdStr = vcd + "/manage -p 2018_fast_test/2018_fast_test --build-execute"
    p = subprocess.Popen(cmdStr.split(), universal_newlines=True)
    p.wait()

    ccsFiles = ["default", "condensed", "dark_mode", "rounded", "drop_shadow"]
    for cssFile in ccsFiles:
        
        if cssFile == "default":    
            cmdStr = vcd + "/manage -p 2018_fast_test/2018_fast_test.vcm --unset-config VCAST_RPTS_CUSTOM_CSS"
        else:
            cmdStr = vcd + "/manage -p 2018_fast_test/2018_fast_test.vcm --config VCAST_RPTS_CUSTOM_CSS=" + cssFile
            
        p = subprocess.Popen(cmdStr.split(), universal_newlines=True)
        p.wait()

        cmdStr = vcd + "/vpython vc_scripts/full_report_no_toc.py 2018_fast_test/2018_fast_test.vcm"
        p = subprocess.Popen(cmdStr.split(), universal_newlines=True)
        p.wait()
        
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
    
    print("2018    : ", dtPost-dt2018)
    print("PoST    : ", copyExtDT-dtPost)
    print("CopyExt : ", pluginDT-copyExtDT)
    print("Plugin  : ", newCssDT-pluginDT)
    print("New CSS : ", endDT-newCssDT)
    print("Total   : ", endDT-startDT)
    
    
    
    