#run_versions_tests.py

import os
import subprocess
import argparse

from datetime import datetime

print("run_version_tests start time", datetime.now())


parser = argparse.ArgumentParser()
parser.add_argument('-x', '--2018',   help='Run the tests on the 2018_fast_test project', action="store_true", dest="run_2018", default=False)
parser.add_argument('-m', '--post',   help='Run the tests on the PoST project',           action="store_true", dest="run_post", default=False)
parser.add_argument('-p', '--plugin', help='Run the tests on the PluginTesting',          action="store_true", dest="run_plgn", default=False)
parser.add_argument('-a', '--all   ', help='Run all the tests',          action="store_true", dest="run_all", default=False)

args = parser.parse_args()



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
    print("run_version_tests ", directory, " start time", datetime.now())

    if not args.run_all and directory.startswith("2018") and not args.run_2018:
        print("Skipping " + directory + " test")
        continue
        
    if not args.run_all and directory.startswith("CurrentRelease") and not args.run_post:
        print("Skipping " + directory + " test")
        continue
        
    print(datetime.now())
    os.chdir(directory)
    
    for coverage_type in coverage_types:
        os.environ['VCAST_CODE_COVERAGE_TYPE'] = coverage_type
        for args in cli_args:
            callCmd = ["test_versions.bat"] + args.split()
            print(directory, coverage_type, " ".join(callCmd))
            p = subprocess.Popen(callCmd, universal_newlines=True)
            p.wait()
    os.chdir(orig_dir)

## Additional tests -- plugin testing
print("run_version_tests PluginTestRunner start time", datetime.now())

if not args.run_all and args.run_plgn:
    for vcd in [r'C:\VCAST\2022sp8', r'C:\VCAST\2023sp4']:
        print("run_version_tests PluginTestRunner " + vcd + " start time", datetime.now())
        os.environ['VECTORCAST_DIR'] = vcd
        p = subprocess.Popen(["PluginTestRunner.bat"], universal_newlines=True)
        p.wait()
else:
    print("Skipping PluginTestRunner.bat")
    
    
print("run_version_tests end time", datetime.now())
