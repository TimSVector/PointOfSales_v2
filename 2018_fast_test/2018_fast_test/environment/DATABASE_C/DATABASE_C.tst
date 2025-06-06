-- VectorCAST 24.sp4 (08/26/24)
-- Test Case Script
--
-- Environment    : DATABASE_C
-- Unit(s) Under Test: database
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

-- Unit: database

-- Subprogram: Get_Table_Record

-- Test Case: BASIS-PATH-001
TEST.UNIT:database
TEST.SUBPROGRAM:Get_Table_Record
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:database.Get_Table_Record.Table:<<MIN>>
TEST.END

-- Subprogram: Update_Table_Record

-- Test Case: BASIS-PATH-001
TEST.UNIT:database
TEST.SUBPROGRAM:Update_Table_Record
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:database.Update_Table_Record.Table:<<MIN>>
TEST.END
