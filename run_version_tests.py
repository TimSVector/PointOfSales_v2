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
    parser.add_argument('--vc_version',   help='Run specified test for specifc VC version',   action="store", dest="vc_version", default=None)
    parser.add_argument('--quick',        help='Run very quick test',                         action="store_true", dest="quick_test", default=False)
    parser.add_argument('-c', '--cov_types',   
        help='Run specified test for specifc coverage types [default is all] (STATEMENT+MC/DC,STATEMENT+BRANCH,FUNCTION+FUNCTION_CALL,FUNCTION,MC/DC,BRANCH,STATEMENT)',   
        action="store", 
        dest="cov_types", 
        default=None)

    os.environ['WORKSPACE'] = os.getcwd()
    
    args = parser.parse_args()
    
    if args.vc_version and os.path.exists("c:/vcast/"+args.vc_version):
        os.environ['VC_VERSION'] = args.vc_version
    elif args.vc_version:
        print("VC Version: " + args.vc_version + " does not exist. Exiting")
        sys.exit()
        
    return args
    
def run_2018_post(args):
        
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
                
    if args.cov_types is None:
        coverage_types = ["STATEMENT+MC/DC ","STATEMENT+BRANCH ","FUNCTION+FUNCTION_CALL","FUNCTION","MC/DC","BRANCH","STATEMENT"]
    else:
        coverage_types = args.cov_types.split(",")

    if args.quick_test:
        print("Quick Test: ", args.quick_test)
        coverage_types = ["STATEMENT+MC/DC ", "FUNCTION+FUNCTION_CALL"]
        cli_args = "SFP IMPORT MODIFY DO_MERGE                "        
        
    directories = ["2018_fast_test", "CurrentRelease/vcast-workarea/vc_manage"]

    orig_dir = os.getcwd()
    
    dt2018 = None
    dtPost = None
    for directory in directories:
                            
        if args.run_all:
            pass
        elif args.run_2018 and directory.startswith("2018"):
            dt2018 = datetime.now()                        
        elif args.run_post and directory.startswith("CurrentRelease"):
            dtPost = datetime.now()
        else:
            continue
            
        os.chdir(directory)
        
        for coverage_type in coverage_types:
            os.environ['VCAST_CODE_COVERAGE_TYPE'] = coverage_type
            for cargs in cli_args:
                callCmd = ["test_versions.bat"] + cargs.split()
                p = subprocess.Popen(callCmd, universal_newlines=True)
                p.wait()
        os.chdir(orig_dir)
        
    return dt2018, dtPost
    
def run_copy_extract_test(args):
    orig_dir = os.getcwd()

    if args.run_all or args.run_copy_extract:
        
        if args.cov_types is None:
            coverage_types = ["STATEMENT+MC/DC ","STATEMENT+BRANCH ","FUNCTION+FUNCTION_CALL","FUNCTION","MC/DC","BRANCH","STATEMENT"]
        else:
            coverage_types = args.cov_types.split(",")

        if args.quick_test:
            coverage_types = ["STATEMENT+MC/DC ", "FUNCTION+FUNCTION_CALL"]
            
        directories = ["2018_fast_test", "CurrentRelease/vcast-workarea/vc_manage"]
        
        if args.run_post and directory.startswith("CurrentRelease"):
            run_dirs.append(directories[1])
        
        if directory.startswith("2018") and args.run_2018:
            run_dirs.append(directories[0])
            
        if args.run_all:
            run_dirs = directories
        
        for directory in run_dirs:
            for coverage_type in coverage_types:
                
                os.chdir(directory)
                os.environ['VCAST_CODE_COVERAGE_TYPE'] = coverage_type            
                
                callCmd = ["test_versions.bat", os.environ['VECTORCAST_DIR'] ,"COPY_EXTRACT"]     

                p = subprocess.Popen(callCmd, universal_newlines=True)
                p.wait()
                if not os.path.exists("copy_extract_full_status.html"):
                    sys.exit("Missing copy_extract_full_status.html")
                os.chdir(orig_dir)


def run_plugin(args):

    ## Additional tests -- plugin testing
    if args.run_all or args.run_plgn:
        for vcd in [r'C:\VCAST\2024sp3']:
            os.environ['VECTORCAST_DIR'] = vcd
            p = subprocess.Popen(["PluginTestRunner.bat"], universal_newlines=True)
            p.wait()
    
if __name__ == '__main__':

    startDT = datetime.now()

    args = parse_args()
    
    dt2018, dtPost = run_2018_post(args)
    
    copyExtDT = datetime.now()
    run_copy_extract_test(args)
    
    pluginDT = datetime.now()
    
    run_plugin(args)
    
    endDT = datetime.now()
    
    print("2018   : ", dtPost-dt2018)
    print("PoST   : ", copyExtDT-dtPost)
    print("CopyExt: ", pluginDT-copyExtDT)
    print("Plugin : ", endDT-pluginDT)
    print("Total  : ", endDT-startDT)
    
    
    
    