#!/usr/bin/python3
# -*- coding: utf-8 -*-
import re
import sys
from gcovr.__main__ import main
if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw|\.exe)?$', '', sys.argv[0])
    main()
    xml_data = []
    with open("coverage.xml","r") as fd:
        xml_data = fd.readlines()
        num = float(xml_data[2].split()[1].split("=")[-1].replace("\"","")) * 100.0
        print ("coverage: " + str(num) + "% of statements")
        xml_data[4] = "    <source>./</source>"
                
    sys.exit()
