# this demo is trying to expand the usefulness of the restaurant point of sales terminal -- data

* Tools:
    * External MinGW v4.8 (trying to avoid VectorCAST MinGW since Linux doesn't have it.  This may change)
    * VCAST 2018sp1
    
* Functionality added:

    * Database - uses linked linked
    * Order Entry - adds "PayTheBill" which in turns calls functions in encrypt.c and matrix_multiply.c
    * Encrypt - psuedo encrytion code base using matrix_multiply to take a data set (C/C info, sec code, name)
                and generate an "encrypted message" to send along
    * Matrix Multiple - bases M1xM2 matrix multiply method
    * Updated manager_driver.c 
    * Added comments and headers to improve code quality metrics that are still being developed
    * Reorganized directory pathing so Component and Coupling demos would be easier
    * Added logic to system_tests.py to handle DCC logic (#include of coupling/coupling_data.c)
    
* Additional demo areas:

    * VectorCAST/QA
        * Running the batch file will create a cover project (Statement, Branch, Function, Function Call coverage)
        * System Tests that are present will be Automatic (AddIncludeDessert, Steak, etc.) and Manual Tests (follow instructions)
        
    * Unit Testing
        * Integration test can show more code being covered
        * Specialized Tests are already setup for INTEGRATION_TEST_TRUST_ZONE
        * Probe Points are easily display in the linked_list.c file
        * Library stubs can be shown in linked_list.c (malloc)
        * Large XLS file in test-data that has already been pre-converted into .tst file for testing matrix_multiply.c
        * Should be able to use for TDD/Agile demo
        * Added Configured Stubs User Code to properly exit on a call __SystemReset() and setup needed parameters (good examples)
        
    * VectorCAST/Analytics
        * Analytics looks much better than Tutorial, but not as awesome as lua
    
    * VectorCAST/Manage
        * Impact of Change Report - point the "Next Release"
        
    * VectorCAST DCC
        * Added batch file for running Data/Control Coupling Demo.  Works with system_tests.py script
        
        
Linux not complete a this time.


Steps to use:

1. Run vcshell make.bat to get the vcshell.db configured **optional
    
2. Update the setenv.bat to reflect your MinGW v4.8 directory (it could be c:\vcast\mingw\bin)

3. Run Start_VectorCAST.bat (builds cover environment the first time)

4. Run System Tests Interactively

5. Build simple test environment for manager.c

6. Build interactively INTEGRATION_TESTING
    - This has a sequence test for placing order, getting check total, paying the bill and clearing the table
    
7. Show Analytics via the Easy Button

8. For Impact of Change Report: select NextRelease for new software build and run test

9. For DCC:
    - Run: enableCoupling.bat
    - Run: QA tests
    - Run: reportCoupling.bat
    - Look at the pretty report