-- VectorCAST 18.sp1 (03/13/18)
-- Test Case Script
-- 
-- Environment    : ENV_DATABASE
-- Unit(s) Under Test: database
-- 
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
--

-- Unit: database

-- Subprogram: Get_Record

-- Test Case: BASIS-PATH-001-PARTIAL
TEST.UNIT:database
TEST.SUBPROGRAM:Get_Record
TEST.NEW
TEST.NAME:BASIS-PATH-001-PARTIAL
TEST.BASIS_PATH:1 of 2 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if ((dPtr = findData(dataItem)) == (void *)0) ==> FALSE
   Test Case Generation Notes:
      Cannot set local variable dPtr in branch 2
TEST.END_NOTES:
TEST.VALUE:database.Get_Record.Table:<<MIN>>
TEST.VALUE:uut_prototype_stubs.findData.return:<<malloc 1>>
TEST.END

-- Test Case: BASIS-PATH-002-PARTIAL
TEST.UNIT:database
TEST.SUBPROGRAM:Get_Record
TEST.NEW
TEST.NAME:BASIS-PATH-002-PARTIAL
TEST.BASIS_PATH:2 of 2 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if ((dPtr = findData(dataItem)) == (void *)0) ==> TRUE
   Test Case Generation Notes:
      Cannot set local variable dPtr in branch 2
TEST.END_NOTES:
TEST.VALUE:database.Get_Record.Table:<<MIN>>
TEST.VALUE:uut_prototype_stubs.findData.return:<<null>>
TEST.END

-- Subprogram: Remove_Record

-- Test Case: BASIS-PATH-001
TEST.UNIT:database
TEST.SUBPROGRAM:Remove_Record
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:database.Remove_Record.Table:<<MIN>>
TEST.END

-- Subprogram: Update_Record

-- Test Case: BASIS-PATH-001
TEST.UNIT:database
TEST.SUBPROGRAM:Update_Record
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if ((entry = findData(dataItem)) != (void *)0) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:database.Update_Record.Table:<<MIN>>
TEST.VALUE:uut_prototype_stubs.findData.return:<<null>>
TEST.END

-- Test Case: BASIS-PATH-002-PARTIAL
TEST.UNIT:database
TEST.SUBPROGRAM:Update_Record
TEST.NEW
TEST.NAME:BASIS-PATH-002-PARTIAL
TEST.BASIS_PATH:2 of 2 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if ((entry = findData(dataItem)) != (void *)0) ==> TRUE
   Test Case Generation Notes:
      Cannot set local variable entry in branch 2
TEST.END_NOTES:
TEST.VALUE:database.Update_Record.Table:<<MIN>>
TEST.VALUE:uut_prototype_stubs.findData.return:<<malloc 1>>
TEST.END
