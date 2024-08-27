-- VectorCAST 18.sp5 (03/03/19)
-- Test Case Script
-- 
-- Environment    : INTEGRATION_TEST
-- Unit(s) Under Test: database manager manager_driver
-- 
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
--

-- Unit: manager_driver

-- Subprogram: VCAST_main

-- Test Case: VCAST_main.001
TEST.UNIT:manager_driver
TEST.SUBPROGRAM:VCAST_main
TEST.NEW
TEST.NAME:VCAST_main.001
TEST.VALUE:manager_driver.VCAST_main.argc:2
TEST.VALUE:manager_driver.VCAST_main.argv:<<malloc 2>>
TEST.VALUE:manager_driver.VCAST_main.argv[1]:<<malloc 12>>
TEST.VALUE:manager_driver.VCAST_main.argv[1]:"Place_Order"
TEST.END
