#!/usr/bin/python3
# -*- coding: utf-8 -*

import os
import sys
import re
import subprocess


# Get the script parameter
# Sample value for -p option: project = "C:/Users/cosqocybe/AppData/Local/PRQA/PRQA-Framework-2.2.0/samples/M2CM_Examples"
project = sys.argv[sys.argv.index("-p") + 1]
file_path = sys.argv[sys.argv.index("-f") + 1]
            
# Open report file
f = open(file_path,"w+")

# Insert header
header = "Type	Filename	Filename with path	Line	Column	Column(0 indexed)	Message level	Message number	Message number (4 digits)	Message text	Message help file	Verbose text	Rule	Group id"
f.write(header)

# Generate the QAC command line
cmd = 'c:/vector/tools/PRQA/PRQA-Framework-2.2.0/common/bin/qacli view -P ' + project +' --format "++ %?h%(ERROR%: WARNING%) ++\\t%f\\t%F\\t%l\\t%c\\t%C\\t%g\\t%n\\t%N\\t%t\\t%H\\t%v\\t%r\\t%G" -m STDOUT'
results = subprocess.check_output(cmd, shell=True)

# Add the output to the report.tab file
removed_lines = 0
for line in results.decode("utf-8").split("\r"):
    if re.search(r'^$', line): 
        removed_lines += 1
        # print("Removing empty line")
    elif re.search(r'// ======= Results for', line):
        removed_lines += 1
        # print("Removing ======= Results for line")
    elif re.search(r' - no results found$', line):
        removed_lines += 1
        # print("Removing  - no results found line")
    else:
        f.write(str(line))

print("Cleaned "+ str(removed_lines) +" lines")
print("Output is in " + str(file_path)) 
# close the file            

f.close()