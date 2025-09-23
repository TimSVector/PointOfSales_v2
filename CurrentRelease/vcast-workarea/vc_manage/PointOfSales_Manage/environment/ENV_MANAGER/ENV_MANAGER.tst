-- VectorCAST 25.sp4 (08/19/25)
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
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
TEST.SCRIPT_FEATURE:VCAST_MAIN_NOT_RENAMED
--

-- Unit: manager

-- Subprogram: Add_Included_Dessert

-- Test Case: Add_Included_Dessert.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:Add_Included_Dessert.001
TEST.NOTES:
This is an automatically generated test case.
Test Path 1
(1) if (Order == (0)) ==> TRUE
Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<null>>
TEST.END

-- Test Case: Add_Included_Dessert.002
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:Add_Included_Dessert.002
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
TEST.END

-- Test Case: Add_Included_Dessert.003
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:Add_Included_Dessert.003
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
TEST.END

-- Test Case: Add_Included_Dessert.004
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:Add_Included_Dessert.004
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
TEST.END

-- Subprogram: Clear_Table

-- Test Case: Clear_Table.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Clear_Table
TEST.NEW
TEST.NAME:Clear_Table.001
TEST.NOTES:
This is an automatically generated test case.
Test Path 1
(1) if (!Table_Data.Is_Bill_Paid) ==> TRUE
Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Clear_Table.Table:<<MIN>>
TEST.VALUE:uut_prototype_stubs.Get_Record.return.Is_Bill_Paid:v_false
TEST.END

-- Test Case: Clear_Table.002
TEST.UNIT:manager
TEST.SUBPROGRAM:Clear_Table
TEST.NEW
TEST.NAME:Clear_Table.002
TEST.NOTES:
This is an automatically generated test case.
Test Path 2
(1) if (!Table_Data.Is_Bill_Paid) ==> FALSE
Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Clear_Table.Table:<<MIN>>
TEST.VALUE:uut_prototype_stubs.Get_Record.return.Is_Bill_Paid:v_true
TEST.END

-- Subprogram: Get_Check_Total

-- Test Case: Get_Check_Total.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Check_Total
TEST.NEW
TEST.NAME:Get_Check_Total.001
TEST.NOTES:
No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:manager.Get_Check_Total.Table:<<MIN>>
TEST.END

-- Subprogram: Pay_The_Bill

-- Test Case: Pay_The_Bill.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Pay_The_Bill
TEST.NEW
TEST.NAME:Pay_The_Bill.001
TEST.NOTES:
This is an automatically generated test case.
Test Path 1
(1) if (transmit_Info(name, cardNumber, secCode, Table_Data.Check_Total) == 0) ==> TRUE
Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Pay_The_Bill.name:<<malloc 1>>
TEST.VALUE:manager.Pay_The_Bill.Table:<<MIN>>
TEST.VALUE:uut_prototype_stubs.transmit_Info.return:0
TEST.END

-- Test Case: Pay_The_Bill.002
TEST.UNIT:manager
TEST.SUBPROGRAM:Pay_The_Bill
TEST.NEW
TEST.NAME:Pay_The_Bill.002
TEST.NOTES:
This is an automatically generated test case.
Test Path 2
(1) if (transmit_Info(name, cardNumber, secCode, Table_Data.Check_Total) == 0) ==> FALSE
Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Pay_The_Bill.name:<<malloc 1>>
TEST.VALUE:manager.Pay_The_Bill.Table:<<MIN>>
TEST.VALUE:uut_prototype_stubs.transmit_Info.return:<<MIN>>
TEST.END

-- Subprogram: Place_Order

-- Test Case: LobserFailTest
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:LobserFailTest
TEST.NOTES:
This is an automatically generated test case.
Test Path 5
(4) case (Order.Entree) ==> LOBSTER
Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:LOBSTER
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Check_Total:MACRO=COST_OF_LOBSTER
TEST.END

-- Test Case: Place_Order.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:Place_Order.001
TEST.NOTES:
This is an automatically generated test case.
Test Path 1
(5) case (Order.Entree) ==> PASTA
Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:PASTA
TEST.END

-- Test Case: Place_Order.002
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:Place_Order.002
TEST.NOTES:
This is an automatically generated test case.
Test Path 2
(1) case (Order.Entree) ==> NO_ENTREE
Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:NO_ENTREE
TEST.END

-- Test Case: Place_Order.003
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:Place_Order.003
TEST.NOTES:
This is an automatically generated test case.
Test Path 3
(2) case (Order.Entree) ==> STEAK
Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:STEAK
TEST.END

-- Test Case: Place_Order.004
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:Place_Order.004
TEST.NOTES:
This is an automatically generated test case.
Test Path 4
(3) case (Order.Entree) ==> CHICKEN
Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:CHICKEN
TEST.END

-- Test Case: Place_Order_Fish
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:Place_Order_Fish
TEST.IMPORT_FAILURES:
(E) @LINE: 330 19)
    >>> Invalid data value: 'Expected legal test script command'
    >>> Read:     "19)" 
(E) @LINE: 331 TEST.VALUE:manager.Place_Order.Order.Entree:FISH
    >>> Value for 'Enumeral' out of range
    >>>   Read "FISH"
    >>>   Command Ignored
TEST.END_IMPORT_FAILURES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.END

-- Test Case: manager_Place_Order_Fish
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:manager_Place_Order_Fish
TEST.IMPORT_FAILURES:
(E) @LINE: 306 TEST.VALUE:manager.Place_Order.Order.Entree:FISH
    >>> Value for 'Enumeral' out of range
    >>>   Read "FISH"
    >>>   Command Ignored
(E) @LINE: 307 TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Order[1].Entree:FISH
    >>> Value for 'Enumeral' out of range
    >>>   Read "FISH"
    >>>   Command Ignored
TEST.END_IMPORT_FAILURES:
TEST.END

TEST.SCRIPT_FEATURE:RESET_ALL
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
TEST.SCRIPT_FEATURE:STRUCT_BASE_CTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
TEST.SCRIPT_FEATURE:VCAST_MAIN_NOT_RENAMED

TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.ADD
TEST.NAME:manager_Place_Order_Fish
TEST.VALUE:manager.Place_Order.Order.Entree:FISH
TEST.EXPECTED:uut_prototype_stubs.Update_Record.Data.Order[1].Entree:FISH
TEST.END

TEST.SCRIPT_FEATURE:RESET_ALL
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:FULL_PARAMETER_TYPES
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:OVERLOADED_CONST_SUPPORT
TEST.SCRIPT_FEATURE:REMOVED_CL_PREFIX
TEST.SCRIPT_FEATURE:STANDARD_SPACING_R2
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
TEST.SCRIPT_FEATURE:STRUCT_BASE_CTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:STRUCT_DTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:STRUCT_FIELD_CTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:UNDERSCORE_NULLPTR
TEST.SCRIPT_FEATURE:VCAST_MAIN_NOT_RENAMED

TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.ADD
TEST.NAME:Place_Order_Fish
19)
TEST.VALUE:manager.Place_Order.Order.Entree:FISH
TEST.END
