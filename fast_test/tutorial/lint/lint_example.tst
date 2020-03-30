-- VectorCAST 6.0 (%H%)
-- Test Case Script
-- 
-- Environment    : LINT
-- Unit(s) Under Test: lint_example
-- 
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
--

-- Subprogram: max_run

-- Test Case: MAX_RUN.MAX
TEST.UNIT:lint_example
TEST.SUBPROGRAM:max_run
TEST.NEW
TEST.NAME:MAX_RUN.MAX
TEST.VALUE:lint_example.max_run.u:0xFFFFFFFF
TEST.EXPECTED:lint_example.max_run.return:32
TEST.END

-- Test Case: MAX_RUN.MIN
TEST.UNIT:lint_example
TEST.SUBPROGRAM:max_run
TEST.NEW
TEST.NAME:MAX_RUN.MIN
TEST.VALUE:lint_example.max_run.u:0x0
TEST.EXPECTED:lint_example.max_run.return:32
TEST.END

-- Subprogram: mySqrtEst

-- Test Case: MYSQRTEST.001
TEST.UNIT:lint_example
TEST.SUBPROGRAM:mySqrtEst
TEST.NEW
TEST.NAME:MYSQRTEST.001
TEST.VALUE:lint_example.mySqrtEst.y:4.0
TEST.EXPECTED:lint_example.mySqrtEst.return:2.0
TEST.END

-- Subprogram: revere

-- Test Case: REVERE.BYLAND
TEST.UNIT:lint_example
TEST.SUBPROGRAM:revere
TEST.NEW
TEST.NAME:REVERE.BYLAND
TEST.VALUE:lint_example.revere.lights:1
TEST.EXPECTED:lint_example.revere.return:"by land"
TEST.END

-- Test Case: REVERE.BYSEA
TEST.UNIT:lint_example
TEST.SUBPROGRAM:revere
TEST.NEW
TEST.NAME:REVERE.BYSEA
TEST.VALUE:lint_example.revere.lights:2
TEST.EXPECTED:lint_example.revere.return:"by sea"
TEST.END

-- Subprogram: scoreData

-- Test Case: SCOREDATA.002
TEST.UNIT:lint_example
TEST.SUBPROGRAM:scoreData
TEST.NEW
TEST.NAME:SCOREDATA.002
TEST.VALUE:lint_example.scoreData.word:0xFC000000
TEST.EXPECTED:lint_example.scoreData.return:6
TEST.END
