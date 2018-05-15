-- VectorCAST 18.sp1 (03/13/18)
-- Test Case Script
-- 
-- Environment    : ENV_WAITING_LIST
-- Unit(s) Under Test: waiting_list
-- 
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
--

-- Unit: waiting_list

-- Subprogram: Add_Party_To_Waiting_List

-- Test Case: BASIS-PATH-001
TEST.UNIT:waiting_list
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (WaitingListSize > (9)) ==> FALSE
      (2) while (Name && *Name) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:waiting_list.<<GLOBAL>>.WaitingListSize:<<MIN>>
TEST.VALUE:waiting_list.Add_Party_To_Waiting_List.Name:<<malloc 9>>
TEST.VALUE:waiting_list.Add_Party_To_Waiting_List.Name:<<null>>
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:waiting_list
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (WaitingListSize > (9)) ==> FALSE
      (2) while (Name && *Name) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:waiting_list.<<GLOBAL>>.WaitingListSize:<<MIN>>
TEST.VALUE:waiting_list.Add_Party_To_Waiting_List.Name:<<malloc 1>>
TEST.VALUE:waiting_list.Add_Party_To_Waiting_List.Name[0]:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-003
TEST.UNIT:waiting_list
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:BASIS-PATH-003
TEST.BASIS_PATH:3 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if (WaitingListSize > (9)) ==> TRUE
      (2) while (Name && *Name) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:waiting_list.<<GLOBAL>>.WaitingListSize:<<MAX>>
TEST.VALUE:waiting_list.Add_Party_To_Waiting_List.Name:<<malloc 9>>
TEST.VALUE:waiting_list.Add_Party_To_Waiting_List.Name:<<null>>
TEST.END

-- Subprogram: Get_Next_Party_To_Be_Seated

-- Test Case: BASIS-PATH-001
TEST.UNIT:waiting_list
TEST.SUBPROGRAM:Get_Next_Party_To_Be_Seated
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (WaitingListIndex > (9)) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:waiting_list.<<GLOBAL>>.WaitingListIndex:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:waiting_list
TEST.SUBPROGRAM:Get_Next_Party_To_Be_Seated
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (WaitingListIndex > (9)) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:waiting_list.<<GLOBAL>>.WaitingListIndex:<<MAX>>
TEST.END
