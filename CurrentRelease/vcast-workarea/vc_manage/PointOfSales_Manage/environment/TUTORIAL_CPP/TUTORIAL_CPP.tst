-- VectorCAST 25.sp4 (08/19/25)
-- Test Case Script
--
-- Environment    : TUTORIAL_CPP
-- Unit(s) Under Test: auto_init database manager
--
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:REMOVED_CL_PREFIX
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STANDARD_SPACING_R2
TEST.SCRIPT_FEATURE:OVERLOADED_CONST_SUPPORT
TEST.SCRIPT_FEATURE:UNDERSCORE_NULLPTR
TEST.SCRIPT_FEATURE:FULL_PARAMETER_TYPES
TEST.SCRIPT_FEATURE:STRUCT_DTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:STRUCT_FIELD_CTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:STRUCT_BASE_CTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
TEST.SCRIPT_FEATURE:VCAST_MAIN_NOT_RENAMED
--

-- Subprogram: <<INIT>>

-- Test Case: <<INIT>>.001
TEST.SUBPROGRAM:<<INIT>>
TEST.NEW
TEST.NAME:<<INIT>>.001
TEST.VALUE_USER_CODE:<<testcase>>
Initialize_Database();
TEST.END_VALUE_USER_CODE:
TEST.END

-- Unit: manager

-- Subprogram: Manager::AddIncludedDessert

-- Test Case: ATG-TEST-1
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddIncludedDessert
TEST.ADD
TEST.NAME:ATG-TEST-1
TEST.VALUE:manager.Manager::AddIncludedDessert.Order:
TEST.END

-- Test Case: ATG-TEST-2
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddIncludedDessert
TEST.ADD
TEST.NAME:ATG-TEST-2
TEST.VALUE:manager.Manager::AddIncludedDessert.Order:
TEST.END

-- Test Case: ATG-TEST-3
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddIncludedDessert
TEST.ADD
TEST.NAME:ATG-TEST-3
TEST.VALUE:manager.Manager::AddIncludedDessert.Order:
TEST.END

-- Subprogram: Manager::Manager

-- Test Case: Manager::Manager.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::Manager
TEST.NEW
TEST.NAME:Manager::Manager.001
TEST.END

-- Subprogram: Manager::PlaceOrder

-- Test Case: Manager::PlaceOrder.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:Manager::PlaceOrder.001
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.END

-- Subprogram: coded_tests_driver

-- Test Case: tutorial_coded_test
TEST.UNIT:manager
TEST.SUBPROGRAM:coded_tests_driver
TEST.NEW
TEST.NAME:tutorial_coded_test
TEST.CODED_TESTS_FILE:$(VCAST_DEMO_SRC_BASE)/coded_test/tutorial_coded_test.cpp
TEST.END
