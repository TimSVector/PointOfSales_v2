-- VectorCAST 24.sp4 (08/26/24)
-- Test Case Script
--
-- Environment    : INTEGRATION_TEST
-- Unit(s) Under Test: database manager manager_driver no_code whitebox
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

-- Test Case: COND_1_ROW_1_PAIR_a_T
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:COND_1_ROW_1_PAIR_a_T
TEST.MCDC_BASIS_PATH:1 of 10
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (Order == (0)) ==> TRUE
      Row number 1 forms a pair with Row 2 for Condition #1, subcondition "a".
         Condition a ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<null>>
TEST.END

-- Test Case: COND_1_ROW_2_PAIR_a_F
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:COND_1_ROW_2_PAIR_a_F
TEST.MCDC_BASIS_PATH:2 of 10
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (Order == (0)) ==> FALSE
      Row number 2 forms a pair with Row 1 for Condition #1, subcondition "a".
         Condition a ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.END

-- Test Case: COND_2_ROW_1_PAIR_a_TTT
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:COND_2_ROW_1_PAIR_a_TTT
TEST.MCDC_BASIS_PATH:4 of 10
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (1) if (Order == (0)) ==> FALSE
      (2) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> TRUE
      Row number 1 forms a pair with Row 5 for Condition #2, subcondition "a".
         Condition a ==> TRUE
         Condition b ==> TRUE
         Condition c ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:CAESAR
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:STEAK
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:MIXED_DRINK
TEST.END

-- Test Case: COND_2_ROW_2_PAIR_c_TTF
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:COND_2_ROW_2_PAIR_c_TTF
TEST.MCDC_BASIS_PATH:6 of 10
TEST.NOTES:
This is an automatically generated test case.
   Test Path 6
      (1) if (Order == (0)) ==> FALSE
      (2) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      Row number 2 forms a pair with Row 1 for Condition #2, subcondition "c".
         Condition a ==> TRUE
         Condition b ==> TRUE
         Condition c ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:CAESAR
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:STEAK
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:NO_BEVERAGE
TEST.END

-- Test Case: COND_2_ROW_3_PAIR_b_TFx
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:COND_2_ROW_3_PAIR_b_TFx
TEST.MCDC_BASIS_PATH:5 of 10
TEST.NOTES:
This is an automatically generated test case.
   Test Path 5
      (1) if (Order == (0)) ==> FALSE
      (2) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      Row number 3 forms a pair with Row 1 for Condition #2, subcondition "b".
         Condition a ==> TRUE
         Condition b ==> FALSE
         Condition c ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:NO_SALAD
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:STEAK
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:MIXED_DRINK
TEST.END

-- Test Case: COND_2_ROW_5_PAIR_a_Fxx
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:COND_2_ROW_5_PAIR_a_Fxx
TEST.MCDC_BASIS_PATH:3 of 10
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if (Order == (0)) ==> FALSE
      (2) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      Row number 5 forms a pair with Row 1 for Condition #2, subcondition "a".
         Condition a ==> FALSE
         Condition b ==> TRUE
         Condition c ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:CAESAR
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:NO_ENTREE
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:MIXED_DRINK
TEST.END

-- Test Case: COND_3_ROW_1_PAIR_a_TTT
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:COND_3_ROW_1_PAIR_a_TTT
TEST.MCDC_BASIS_PATH:8 of 10
TEST.NOTES:
This is an automatically generated test case.
   Test Path 8
      (1) if (Order == (0)) ==> FALSE
      (2) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      (3) if ((Order->Entree == (LOBSTER) && Order->Salad == (GREEN)) && Order->Beverage == (WINE)) ==> TRUE
      Row number 1 forms a pair with Row 5 for Condition #3, subcondition "a".
         Condition a ==> TRUE
         Condition b ==> TRUE
         Condition c ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:GREEN
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:LOBSTER
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:WINE
TEST.END

-- Test Case: COND_3_ROW_2_PAIR_c_TTF
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:COND_3_ROW_2_PAIR_c_TTF
TEST.MCDC_BASIS_PATH:10 of 10
TEST.NOTES:
This is an automatically generated test case.
   Test Path 10
      (1) if (Order == (0)) ==> FALSE
      (2) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      (3) if ((Order->Entree == (LOBSTER) && Order->Salad == (GREEN)) && Order->Beverage == (WINE)) ==> FALSE
      Row number 2 forms a pair with Row 1 for Condition #3, subcondition "c".
         Condition a ==> TRUE
         Condition b ==> TRUE
         Condition c ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:GREEN
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:LOBSTER
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:NO_BEVERAGE
TEST.END

-- Test Case: COND_3_ROW_3_PAIR_b_TFx
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:COND_3_ROW_3_PAIR_b_TFx
TEST.MCDC_BASIS_PATH:9 of 10
TEST.NOTES:
This is an automatically generated test case.
   Test Path 9
      (1) if (Order == (0)) ==> FALSE
      (2) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      (3) if ((Order->Entree == (LOBSTER) && Order->Salad == (GREEN)) && Order->Beverage == (WINE)) ==> FALSE
      Row number 3 forms a pair with Row 1 for Condition #3, subcondition "b".
         Condition a ==> TRUE
         Condition b ==> FALSE
         Condition c ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:NO_SALAD
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:LOBSTER
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:WINE
TEST.END

-- Test Case: COND_3_ROW_5_PAIR_a_Fxx
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:COND_3_ROW_5_PAIR_a_Fxx
TEST.MCDC_BASIS_PATH:7 of 10
TEST.NOTES:
This is an automatically generated test case.
   Test Path 7
      (1) if (Order == (0)) ==> FALSE
      (2) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      (3) if ((Order->Entree == (LOBSTER) && Order->Salad == (GREEN)) && Order->Beverage == (WINE)) ==> FALSE
      Row number 5 forms a pair with Row 1 for Condition #3, subcondition "a".
         Condition a ==> FALSE
         Condition b ==> TRUE
         Condition c ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:GREEN
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:NO_ENTREE
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:WINE
TEST.END

-- Subprogram: Add_Party_To_Waiting_List

-- Test Case: COND_1_ROW_1_PAIR_a_T
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:COND_1_ROW_1_PAIR_a_T
TEST.MCDC_BASIS_PATH:2 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (WaitingListSize > (9)) ==> TRUE
      Row number 1 forms a pair with Row 2 for Condition #1, subcondition "a".
         Condition a ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:<<MAX>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<malloc 1>>
TEST.END

-- Test Case: COND_1_ROW_2_PAIR_a_F
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:COND_1_ROW_2_PAIR_a_F
TEST.MCDC_BASIS_PATH:1 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (WaitingListSize > (9)) ==> FALSE
      Row number 2 forms a pair with Row 1 for Condition #1, subcondition "a".
         Condition a ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:<<MIN>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<malloc 1>>
TEST.END

-- Test Case: COND_2_ROW_1_PAIR_a_TT
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:COND_2_ROW_1_PAIR_a_TT
TEST.MCDC_BASIS_PATH:4 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (1) if (WaitingListSize > (9)) ==> FALSE
      (2) while (Name && *Name) ==> TRUE
      Row number 1 forms a pair with Row 3 for Condition #2, subcondition "a".
         Condition a ==> TRUE
         Condition b ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:<<MIN>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<malloc 1>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name[0]:<<MIN>>
TEST.END

-- Test Case: COND_2_ROW_2_PAIR_b_TF
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:COND_2_ROW_2_PAIR_b_TF
TEST.MCDC_BASIS_PATH:5 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 5
      (1) if (WaitingListSize > (9)) ==> FALSE
      (2) while (Name && *Name) ==> FALSE
      Row number 2 forms a pair with Row 1 for Condition #2, subcondition "b".
         Condition a ==> TRUE
         Condition b ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:<<MIN>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<malloc 1>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name[0]:\0
TEST.END

-- Test Case: COND_2_ROW_3_PAIR_a_Fx-PARTIAL
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:COND_2_ROW_3_PAIR_a_Fx-PARTIAL
TEST.MCDC_BASIS_PATH:3 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if (WaitingListSize > (9)) ==> FALSE
      (2) while (Name && *Name) ==> FALSE
      Row number 3 forms a pair with Row 1 for Condition #2, subcondition "a".
         Condition a ==> FALSE
         Condition b ==> TRUE
   Test Case Generation Notes:
      Conflict: Trying to set variable manager.Add_Party_To_Waiting_List.Name 'equal to' and 'not equal to' same value in branch 2
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:<<MIN>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<null>>
TEST.END

-- Subprogram: Clear_Table

-- Test Case: COND_1_ROW_1_PAIR_a_T-PARTIAL
TEST.UNIT:manager
TEST.SUBPROGRAM:Clear_Table
TEST.NEW
TEST.NAME:COND_1_ROW_1_PAIR_a_T-PARTIAL
TEST.MCDC_BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) for (Seat < 4) ==> TRUE
      Row number 1 forms a pair with Row 2 for Condition #1, subcondition "a".
         Condition a ==> TRUE
   Test Case Generation Notes:
      Conflict: Unable to control expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.VALUE:manager.Clear_Table.Table:<<MIN>>
TEST.END

-- Test Case: COND_1_ROW_2_PAIR_a_F-PARTIAL
TEST.UNIT:manager
TEST.SUBPROGRAM:Clear_Table
TEST.NEW
TEST.NAME:COND_1_ROW_2_PAIR_a_F-PARTIAL
TEST.MCDC_BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) for (Seat < 4) ==> FALSE
      Row number 2 forms a pair with Row 1 for Condition #1, subcondition "a".
         Condition a ==> FALSE
   Test Case Generation Notes:
      Conflict: Unable to control expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.VALUE:manager.Clear_Table.Table:<<MIN>>
TEST.END

-- Subprogram: Get_Next_Party_To_Be_Seated

-- Test Case: COND_1_ROW_1_PAIR_a_T
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Next_Party_To_Be_Seated
TEST.NEW
TEST.NAME:COND_1_ROW_1_PAIR_a_T
TEST.MCDC_BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (WaitingListIndex > (9)) ==> TRUE
      Row number 1 forms a pair with Row 2 for Condition #1, subcondition "a".
         Condition a ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListIndex:<<MAX>>
TEST.END

-- Test Case: COND_1_ROW_2_PAIR_a_F
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Next_Party_To_Be_Seated
TEST.NEW
TEST.NAME:COND_1_ROW_2_PAIR_a_F
TEST.MCDC_BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (WaitingListIndex > (9)) ==> FALSE
      Row number 2 forms a pair with Row 1 for Condition #1, subcondition "a".
         Condition a ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListIndex:<<MIN>>
TEST.END

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
