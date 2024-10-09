-- VectorCAST 24.sp4 (08/26/24)
-- Test Case Script
--
-- Environment    : TUTORIAL_CPP
-- Unit(s) Under Test: database manager
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

-- Unit: manager

-- Subprogram: Manager::PlaceOrder

-- Test Case: MANAGER::PLACEORDER.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:MANAGER::PLACEORDER.001
TEST.IMPORT_FAILURES:
(E) @LINE: 51 TEST.VALUE:uut_prototype_stubs.DataBase::GetTableRecord.Data[0].NumberInParty:0
    >>> Could not find function DataBase::GetTableRecord
    >>>    in unit uut_prototype_stubs.
    >>> Value Line Error - Command Ignored
(E) @LINE: 52 TEST.VALUE:uut_prototype_stubs.DataBase::GetTableRecord.Data[0].CheckTotal:0
    >>> Could not find function DataBase::GetTableRecord
    >>>    in unit uut_prototype_stubs.
    >>> Value Line Error - Command Ignored
(E) @LINE: 53 TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].IsOccupied:true
    >>> Could not find function DataBase::UpdateTableRecord
    >>>    in unit uut_prototype_stubs.
    >>> Value Line Error - Command Ignored
(E) @LINE: 54 TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].NumberInParty:1
    >>> Could not find function DataBase::UpdateTableRecord
    >>>    in unit uut_prototype_stubs.
    >>> Value Line Error - Command Ignored
(E) @LINE: 55 TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].Order[0].Dessert:Pies
    >>> Could not find function DataBase::UpdateTableRecord
    >>>    in unit uut_prototype_stubs.
    >>> Value Line Error - Command Ignored
(E) @LINE: 56 TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].CheckTotal:12..16
    >>> Could not find function DataBase::UpdateTableRecord
    >>>    in unit uut_prototype_stubs.
    >>> Value Line Error - Command Ignored
TEST.END_IMPORT_FAILURES:
TEST.NOTES:

This test is the the same test case that should be created
by following all of the steps in the first part of the 
"C Tutorials -> Basic Tutorial" from the VectorCAST 
Getting Started manual.

It shows the basic concepts associated with setting input and
expected values for both the Unit Under Test and Stub Functions.

TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::PlaceOrder.Table:2
TEST.VALUE:manager.Manager::PlaceOrder.Seat:0
TEST.VALUE:manager.Manager::PlaceOrder.Order.Soup:Onion
TEST.VALUE:manager.Manager::PlaceOrder.Order.Salad:Caesar
TEST.VALUE:manager.Manager::PlaceOrder.Order.Entree:Steak
TEST.VALUE:manager.Manager::PlaceOrder.Order.Beverage:MixedDrink
TEST.END

-- Test Case: MANAGER::PLACEORDER.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.ADD
TEST.NAME:MANAGER::PLACEORDER.001
TEST.VALUE:uut_prototype_stubs.DataBase::GetTableRecord.Data[0].NumberInParty:0
TEST.VALUE:uut_prototype_stubs.DataBase::GetTableRecord.Data[0].CheckTotal:0
TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].IsOccupied:true
TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].NumberInParty:1
TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].Order[0].Dessert:Pies
TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].CheckTotal:12..16
TEST.END

-- Test Case: MANAGER::PLACEORDER.002
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:MANAGER::PLACEORDER.002
TEST.IMPORT_FAILURES:
(E) @LINE: 84 TEST.VALUE:uut_prototype_stubs.DataBase::GetTableRecord.Data[0].NumberInParty:0
    >>> Could not find function DataBase::GetTableRecord
    >>>    in unit uut_prototype_stubs.
    >>> Value Line Error - Command Ignored
(E) @LINE: 85 TEST.VALUE:uut_prototype_stubs.DataBase::GetTableRecord.Data[0].CheckTotal:0
    >>> Could not find function DataBase::GetTableRecord
    >>>    in unit uut_prototype_stubs.
    >>> Value Line Error - Command Ignored
(E) @LINE: 86 TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].IsOccupied:true
    >>> Could not find function DataBase::UpdateTableRecord
    >>>    in unit uut_prototype_stubs.
    >>> Value Line Error - Command Ignored
(E) @LINE: 87 TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].NumberInParty:1
    >>> Could not find function DataBase::UpdateTableRecord
    >>>    in unit uut_prototype_stubs.
    >>> Value Line Error - Command Ignored
(E) @LINE: 88 TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].Order[0].Dessert:Cake
    >>> Could not find function DataBase::UpdateTableRecord
    >>>    in unit uut_prototype_stubs.
    >>> Value Line Error - Command Ignored
(E) @LINE: 89 TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].CheckTotal:12..16
    >>> Could not find function DataBase::UpdateTableRecord
    >>>    in unit uut_prototype_stubs.
    >>> Value Line Error - Command Ignored
TEST.END_IMPORT_FAILURES:
TEST.NOTES:

This test is the the same test case that should be created
by following all of the steps in the second part of the 
"C Tutorials -> Basic Tutorial" from the VectorCAST 
Getting Started manual.

It is similar to the first test, but it uses a stub for the internal
to manager.c function: Add_Included_Dessert.

TEST.END_NOTES:
TEST.STUB:manager.Manager::AddIncludedDessert
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Dessert:Cake
TEST.VALUE:manager.Manager::PlaceOrder.Table:2
TEST.VALUE:manager.Manager::PlaceOrder.Seat:0
TEST.VALUE:manager.Manager::PlaceOrder.Order.Soup:Onion
TEST.VALUE:manager.Manager::PlaceOrder.Order.Salad:Caesar
TEST.VALUE:manager.Manager::PlaceOrder.Order.Entree:Steak
TEST.VALUE:manager.Manager::PlaceOrder.Order.Beverage:MixedDrink
TEST.END

-- Test Case: MANAGER::PLACEORDER.002
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.ADD
TEST.NAME:MANAGER::PLACEORDER.002
TEST.VALUE:uut_prototype_stubs.DataBase::GetTableRecord.Data[0].NumberInParty:0
TEST.VALUE:uut_prototype_stubs.DataBase::GetTableRecord.Data[0].CheckTotal:0
TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].IsOccupied:true
TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].NumberInParty:1
TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].Order[0].Dessert:Cake
TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].CheckTotal:12..16
TEST.END

-- Subprogram: coded_tests_driver

-- Test Case: tutorial_coded_test
TEST.UNIT:manager
TEST.SUBPROGRAM:coded_tests_driver
TEST.NEW
TEST.NAME:tutorial_coded_test
TEST.CODED_TESTS_FILE:$(VCAST_DEMO_SRC_BASE)/coded_test/tutorial_coded_test.cpp
TEST.END
