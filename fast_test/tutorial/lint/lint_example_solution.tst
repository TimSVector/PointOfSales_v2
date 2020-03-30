-- VectorCAST 6.0 (%H%)
-- Test Case Script
-- 
-- Environment    : LINT
-- Unit(s) Under Test: lintExamples
-- 
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
--

-- Subprogram: mySqrtEst

-- Test Case: MYSQRTEST.002
TEST.UNIT:lintExamples
TEST.SUBPROGRAM:mySqrtEst
TEST.NEW
TEST.NAME:MYSQRTEST.002
TEST.VALUE:lintExamples.mySqrtEst.y:-1.0
TEST.EXPECTED:lintExamples.mySqrtEst.return:0.0
TEST.END
