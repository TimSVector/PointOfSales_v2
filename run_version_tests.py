#run_versions_tests.py

import os
import subprocess

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
PluginTestRunner.bat
p = subprocess.Popen(["PluginTestRunner.bat"], universal_newlines=True)
p.wait()
