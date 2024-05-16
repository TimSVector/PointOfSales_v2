VC_FailurePhrases = ["No valid edition(s) available",
                  "py did not execute correctly", 
                  "Traceback (most recent call last)",
                  "Failed to acquire lock on environment",
                  "Environment Creation Failed",
                  "Error with Test Case Management Report",
                  "FLEXlm Error",
                  "INCR_BUILD_FAILED",
                  "Environment was not successfully built",
                  "NOT_LINKED",
                  "Preprocess Failed",
                  "Abnormal Termination on Environment",
                  "not recognized as an internal or external command",
                  "Another Workspace with this path already exists",
                  "Destination directory or database is not writable",
                  "Could not acquire a read lock on the project's vcm file",
                  "No environments found in ",
                  ".vcm is invalid",
                  "Invalid Workspace. Please ensure the directory and database contain write permission",
                  "The environment is invalid because",
                  "Please ensure that the project has the proper permissions and that the environment is not being accessed by another process.",
                  "Error: That command is not permitted in continuous integration mode",
                  "Dropping probe point", 
                  "Value Line Error - Command Ignored", 
                  "INFO: Problem parsing test results file", 
                  "INFO: File System Error ", 
                  "ERROR: Error accessing DataAPI", 
                  "ERROR: Undefined Error"
                    ]   
                    
with open("test_results.log", "r") as fd:
    lines = fd.readlines()

lc = 0

for line in lines:
    lc += 1
    for err in VC_FailurePhrases:
        if err in line:
            print ("Error: #", str(lc), line) 