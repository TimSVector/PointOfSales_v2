#run_versions_tests.py

import os, sys
import subprocess
import argparse

from datetime import datetime

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('-x', '--2018',   help='Run the tests on the 2018_fast_test project', action="store_true", dest="run_2018", default=False)
    parser.add_argument('-m', '--post',   help='Run the tests on the PoST project',           action="store_true", dest="run_post", default=False)
    parser.add_argument('-p', '--plugin', help='Run the tests on the PluginTesting',          action="store_true", dest="run_plgn", default=False)
    parser.add_argument('-a', '--all',    help='Run all the tests',                           action="store_true", dest="run_all", default=False)
    parser.add_argument('--vc_version',   help='Run specified test for specifc VC version',   action="store", dest="vc_version", default=None)

    args = parser.parse_args()

    if args.vc_version and os.path.exists("c:/vcast/"+args.vc_version):
        os.environ['VC_VERSION'] = args.vc_version
    elif args.vc_version:
        print("VC Version: " + args.vc_version + " does not exist. Exiting")
        sys.exit()

        
    return args
    
def run_2018_post(args):

    dt2018 = datetime.now()
    dtPost = datetime.now()
        
    cli_args = ["                          ",
                "            MODIFY        ",  
                "    IMPORT                ", 
                "    IMPORT        DO_MERGE", 
                "    IMPORT MODIFY         ", 
                "    IMPORT MODIFY DO_MERGE", 
                "SFP                       ", 
                "SFP        MODIFY         ", 
                "SFP IMPORT                ", 
                "SFP IMPORT        DO_MERGE", 
                "SFP IMPORT MODIFY         ", 
                "SFP IMPORT MODIFY DO_MERGE"] 
                
    coverage_types = ["STATEMENT+MC/DC ","STATEMENT+BRANCH ","FUNCTION+FUNCTION_CALL","FUNCTION","MC/DC","BRANCH","STATEMENT"]

    directories = ["2018_fast_test", "CurrentRelease/vcast-workarea/vc_manage"]

    orig_dir = os.getcwd()

    for directory in directories:

        if args.run_all:
            pass
        elif args.run_2018 and directory.startswith("2018"):
            pass
            
        elif args.run_post and directory.startswith("CurrentRelease"):
            dtPost = datetime.now()
            pass
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

def run_plugin(args):

    ## Additional tests -- plugin testing
    if args.run_all or args.run_plgn:
        for vcd in [r'C:\VCAST\2023sp4']:
            os.environ['VECTORCAST_DIR'] = vcd
            p = subprocess.Popen(["PluginTestRunner.bat"], universal_newlines=True)
            p.wait()
    
if __name__ == '__main__':

    startDT = datetime.now()

    args = parse_args()
    
    dt2018, dtPost = run_2018_post(args)
    
    pluginDT = datetime.now()
    
    run_plugin(args)
    
    endDT = datetime.now()
    
    print("Start : ", startDT)
    print("2018  : ", dt2018,   dtPost-dt2018)
    print("PoST  : ", dtPost,   pluginDT-dtPost)
    print("Plugin: ", pluginDT, endDT-pluginDT)
    print("End   : ", endDT, endDT-startDT)
    
    
    
    