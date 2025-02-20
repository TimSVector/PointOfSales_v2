-- VectorCAST 24 (02/13/24)
-- Test Case Script
--
-- Environment    : ENV_MANAGER
-- Unit(s) Under Test: manager
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

-- Subprogram: Add_Included_Dessert

-- Test Case: manager_add_included_dessert_cake
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:manager_add_included_dessert_cake
TEST.BASIS_PATH:3 of 4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if (Order == (0)) ==> FALSE
      (2) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      (3) if ((Order->Entree == (LOBSTER) && Order->Salad == (GREEN)) && Order->Beverage == (WINE)) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:GREEN
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:LOBSTER
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:WINE
TEST.EXPECTED:manager.Add_Included_Dessert.Order[0].Dessert:CAKE
TEST.END

-- Test Case: manager_add_included_dessert_none
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:manager_add_included_dessert_none
TEST.BASIS_PATH:2 of 4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (Order == (0)) ==> FALSE
      (2) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      (3) if ((Order->Entree == (LOBSTER) && Order->Salad == (GREEN)) && Order->Beverage == (WINE)) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:NO_ENTREE
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Dessert:FRUIT
TEST.EXPECTED:manager.Add_Included_Dessert.Order[0].Dessert:FRUIT
TEST.END

-- Test Case: manager_add_included_dessert_null
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:manager_add_included_dessert_null
TEST.BASIS_PATH:1 of 4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (Order == (0)) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<null>>
TEST.END

-- Test Case: manager_add_included_dessert_pie
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:manager_add_included_dessert_pie
TEST.BASIS_PATH:4 of 4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (1) if (Order == (0)) ==> FALSE
      (2) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:CAESAR
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:STEAK
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:MIXED_DRINK
TEST.EXPECTED:manager.Add_Included_Dessert.Order[0].Dessert:PIE
TEST.END

-- Subprogram: Place_Order

-- Test Case: manager_Place_Order_All_Entrees
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:manager_Place_Order_All_Entrees
TEST.VALUE:manager.Place_Order.Table:1
TEST.VALUE:manager.Place_Order.Seat:1
TEST.VALUE:manager.Place_Order.Order.Soup:ONION
TEST.VALUE:manager.Place_Order.Order.Entree:VARY FROM:NO_ENTREE TO:PASTA BY: 1
TEST.VALUE:manager.Place_Order.Order.Beverage:WINE
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Is_Occupied:v_true
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Number_In_Party:1
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Order[1].Soup:ONION
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Order[1].Entree:NO_ENTREE..PASTA
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Order[1].Beverage:WINE
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Check_Total:0.0..20.0
TEST.END

-- Test Case: manager_Place_Order_Fish
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:manager_Place_Order_Fish
TEST.VALUE:manager.Place_Order.Table:1
TEST.VALUE:manager.Place_Order.Seat:1
TEST.VALUE:manager.Place_Order.Order.Beverage:WINE
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Is_Occupied:v_true
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Number_In_Party:1
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Order[1].Soup:ONION
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Order[1].Beverage:WINE
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Check_Total:0.0..20.0
TEST.END

-- Test Case: manager_Place_Order_SeatCount
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:manager_Place_Order_SeatCount
TEST.VALUE:manager.Place_Order.Table:VARY FROM:0 TO:3 BY: 1
TEST.EXPECTED:manager.Place_Order.return:0
TEST.END

-- Test Case: manager_Place_Order_TableCount
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:manager_Place_Order_TableCount
TEST.VALUE:manager.Place_Order.Table:VARY FROM:0 TO:5 BY: 1
TEST.EXPECTED:manager.Place_Order.return:0
TEST.END

-- COMPOUND TESTS

TEST.SUBPROGRAM:<<COMPOUND>>
TEST.NEW
TEST.NAME:manager_SpecialsTest
TEST.SLOT: "1", "manager", "Add_Included_Dessert", "1", "manager_add_included_dessert_null"
TEST.SLOT: "2", "manager", "Add_Included_Dessert", "1", "manager_add_included_dessert_none"
TEST.SLOT: "3", "manager", "Add_Included_Dessert", "1", "manager_add_included_dessert_cake"
TEST.SLOT: "4", "manager", "Add_Included_Dessert", "1", "manager_add_included_dessert_pie"
TEST.END
--

TEST.SCRIPT_FEATURE:RESET_ALL
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
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
TEST.SCRIPT_FEATURE:VCAST_MAIN_NOT_RENAMED

TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.ADD
TEST.NAME:manager_Place_Order_Fish
TEST.VALUE:manager.Place_Order.Order.Entree:FISH
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Order[1].Entree:FISH
TEST.END
