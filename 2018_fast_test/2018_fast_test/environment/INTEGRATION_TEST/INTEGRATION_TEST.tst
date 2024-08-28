-- VectorCAST 24.sp3 (07/14/24)
-- Test Case Script
--
-- Environment    : INTEGRATION_TEST
-- Unit(s) Under Test: database manager manager_driver
--
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:REMOVED_CL_PREFIX
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
TEST.SCRIPT_FEATURE:VCAST_MAIN_NOT_RENAMED
--

-- Unit: manager_driver

-- Subprogram: main

-- Test Case: VCAST_main.001
TEST.UNIT:manager_driver
TEST.SUBPROGRAM:main
TEST.NEW
TEST.NAME:VCAST_main.001
TEST.VALUE:manager_driver.main.argc:2
TEST.VALUE:manager_driver.main.argv:<<malloc 2>>
TEST.VALUE:manager_driver.main.argv[1]:<<malloc 12>>
TEST.VALUE:manager_driver.main.argv[1]:"Place_Order"
TEST.END
