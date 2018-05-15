-- VectorCAST 18.sp1 (03/13/18)
-- Test Case Script
-- 
-- Environment    : ENV_ENCRYPT
-- Unit(s) Under Test: encrypt
-- 
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
--

-- Unit: encrypt

-- Subprogram: Encrypt_Info

-- Test Case: BASIS-PATH-001
TEST.UNIT:encrypt
TEST.SUBPROGRAM:Encrypt_Info
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:encrypt.Encrypt_Info.private_key:<<malloc 1>>
TEST.VALUE:encrypt.Encrypt_Info.name:<<malloc 1>>
TEST.VALUE:encrypt.Encrypt_Info.Info:<<MIN>>
TEST.END

-- Subprogram: encrypt_and_send

-- Test Case: BASIS-PATH-001-PARTIAL
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:BASIS-PATH-001-PARTIAL
TEST.BASIS_PATH:1 of 7 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if inData ==> FALSE
      (6) if (matrix_multiply(&data2BSent, private_key, &result) == (FAILURE)) ==> TRUE
   Test Case Generation Notes:
      Cannot set local variable j in branch 6
      Cannot set local variable i in branch 6
TEST.END_NOTES:
TEST.VALUE:encrypt.encrypt_and_send.inData:<<malloc 9>>
TEST.VALUE:encrypt.encrypt_and_send.inData:<<null>>
TEST.VALUE:encrypt.encrypt_and_send.row:<<MIN>>
TEST.VALUE:encrypt.encrypt_and_send.col:<<MIN>>
TEST.VALUE:encrypt.encrypt_and_send.private_key:<<malloc 1>>
TEST.VALUE:uut_prototype_stubs.matrix_multiply.return:-1
TEST.END

-- Test Case: BASIS-PATH-002-PARTIAL
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:BASIS-PATH-002-PARTIAL
TEST.BASIS_PATH:2 of 7 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if inData ==> FALSE
      (6) if (matrix_multiply(&data2BSent, private_key, &result) == (FAILURE)) ==> FALSE
   Test Case Generation Notes:
      Cannot set local variable j in branch 6
      Cannot set local variable i in branch 6
TEST.END_NOTES:
TEST.VALUE:encrypt.encrypt_and_send.inData:<<malloc 9>>
TEST.VALUE:encrypt.encrypt_and_send.inData:<<null>>
TEST.VALUE:encrypt.encrypt_and_send.row:<<MIN>>
TEST.VALUE:encrypt.encrypt_and_send.col:<<MIN>>
TEST.VALUE:encrypt.encrypt_and_send.private_key:<<malloc 1>>
TEST.VALUE:uut_prototype_stubs.matrix_multiply.return:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-003-PARTIAL
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:BASIS-PATH-003-PARTIAL
TEST.BASIS_PATH:3 of 7 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if inData ==> TRUE
      (2) for (i < row) ==> FALSE
      (6) if (matrix_multiply(&data2BSent, private_key, &result) == (FAILURE)) ==> TRUE
   Test Case Generation Notes:
      Cannot set local variable j in branch 6
      Cannot set i due to assignment
TEST.END_NOTES:
TEST.VALUE:encrypt.encrypt_and_send.inData:<<malloc 1>>
TEST.VALUE:encrypt.encrypt_and_send.row:0
TEST.VALUE:encrypt.encrypt_and_send.col:<<MIN>>
TEST.VALUE:encrypt.encrypt_and_send.private_key:<<malloc 1>>
TEST.VALUE:uut_prototype_stubs.matrix_multiply.return:-1
TEST.END

-- Test Case: BASIS-PATH-004-PARTIAL
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:BASIS-PATH-004-PARTIAL
TEST.BASIS_PATH:4 of 7 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (1) if inData ==> TRUE
      (2) for (i < row) ==> TRUE
      (3) for (j < col) ==> FALSE
      (6) if (matrix_multiply(&data2BSent, private_key, &result) == (FAILURE)) ==> TRUE
   Test Case Generation Notes:
      Cannot set j due to assignment
      Cannot set i due to assignment
TEST.END_NOTES:
TEST.VALUE:encrypt.encrypt_and_send.inData:<<malloc 1>>
TEST.VALUE:encrypt.encrypt_and_send.row:1
TEST.VALUE:encrypt.encrypt_and_send.col:0
TEST.VALUE:encrypt.encrypt_and_send.private_key:<<malloc 1>>
TEST.VALUE:uut_prototype_stubs.matrix_multiply.return:-1
TEST.END

-- Test Case: BASIS-PATH-005-PARTIAL
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:BASIS-PATH-005-PARTIAL
TEST.BASIS_PATH:5 of 7 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 5
      (1) if inData ==> TRUE
      (2) for (i < row) ==> TRUE
      (3) for (j < col) ==> TRUE
      (4) if (*inData == 0) ==> FALSE
      (5) if (!inEnd) ==> FALSE
      (6) if (matrix_multiply(&data2BSent, private_key, &result) == (FAILURE)) ==> TRUE
   Test Case Generation Notes:
      Cannot set local variable inEnd in branch 5
      Cannot set j due to assignment
      Cannot set i due to assignment
TEST.END_NOTES:
TEST.VALUE:encrypt.encrypt_and_send.inData:<<malloc 1>>
TEST.VALUE:encrypt.encrypt_and_send.inData[0]:<<MIN>>
TEST.VALUE:encrypt.encrypt_and_send.row:1
TEST.VALUE:encrypt.encrypt_and_send.col:1
TEST.VALUE:encrypt.encrypt_and_send.private_key:<<malloc 1>>
TEST.VALUE:uut_prototype_stubs.matrix_multiply.return:-1
TEST.END

-- Test Case: BASIS-PATH-006-PARTIAL
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:BASIS-PATH-006-PARTIAL
TEST.BASIS_PATH:6 of 7 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 6
      (1) if inData ==> TRUE
      (2) for (i < row) ==> TRUE
      (3) for (j < col) ==> TRUE
      (4) if (*inData == 0) ==> FALSE
      (5) if (!inEnd) ==> TRUE
      (6) if (matrix_multiply(&data2BSent, private_key, &result) == (FAILURE)) ==> TRUE
   Test Case Generation Notes:
      Cannot set local variable inEnd in branch 5
      Cannot set j due to assignment
      Cannot set i due to assignment
TEST.END_NOTES:
TEST.VALUE:encrypt.encrypt_and_send.inData:<<malloc 1>>
TEST.VALUE:encrypt.encrypt_and_send.inData[0]:<<MIN>>
TEST.VALUE:encrypt.encrypt_and_send.row:1
TEST.VALUE:encrypt.encrypt_and_send.col:1
TEST.VALUE:encrypt.encrypt_and_send.private_key:<<malloc 1>>
TEST.VALUE:uut_prototype_stubs.matrix_multiply.return:-1
TEST.END

-- Test Case: BASIS-PATH-007-PARTIAL
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:BASIS-PATH-007-PARTIAL
TEST.BASIS_PATH:7 of 7 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 7
      (1) if inData ==> TRUE
      (2) for (i < row) ==> TRUE
      (3) for (j < col) ==> TRUE
      (4) if (*inData == 0) ==> TRUE
      (5) if (!inEnd) ==> FALSE
      (6) if (matrix_multiply(&data2BSent, private_key, &result) == (FAILURE)) ==> TRUE
   Test Case Generation Notes:
      Cannot set inEnd due to assignment
      Cannot set j due to assignment
      Cannot set i due to assignment
TEST.END_NOTES:
TEST.VALUE:encrypt.encrypt_and_send.inData:<<malloc 1>>
TEST.VALUE:encrypt.encrypt_and_send.inData[0]:\0
TEST.VALUE:encrypt.encrypt_and_send.row:1
TEST.VALUE:encrypt.encrypt_and_send.col:1
TEST.VALUE:encrypt.encrypt_and_send.private_key:<<malloc 1>>
TEST.VALUE:uut_prototype_stubs.matrix_multiply.return:-1
TEST.END

-- Subprogram: generate_private_key

-- Test Case: BASIS-PATH-001-TEMPLATE
TEST.UNIT:encrypt
TEST.SUBPROGRAM:generate_private_key
TEST.NEW
TEST.NAME:BASIS-PATH-001-TEMPLATE
TEST.BASIS_PATH:1 of 4 (template)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (private_key.row == -1 && private_key.col == -1) ==> FALSE
   Test Case Generation Notes:
      Cannot set local variable private_key in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-002-TEMPLATE
TEST.UNIT:encrypt
TEST.SUBPROGRAM:generate_private_key
TEST.NEW
TEST.NAME:BASIS-PATH-002-TEMPLATE
TEST.BASIS_PATH:2 of 4 (template)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (private_key.row == -1 && private_key.col == -1) ==> TRUE
      (2) for (i < 4) ==> FALSE
   Test Case Generation Notes:
      Cannot set local variable private_key in branch 1
      Conflict: Unable to control expression-to-expression comparison in branch 2
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-003-TEMPLATE
TEST.UNIT:encrypt
TEST.SUBPROGRAM:generate_private_key
TEST.NEW
TEST.NAME:BASIS-PATH-003-TEMPLATE
TEST.BASIS_PATH:3 of 4 (template)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if (private_key.row == -1 && private_key.col == -1) ==> TRUE
      (2) for (i < 4) ==> TRUE
      (3) for (j < 4) ==> FALSE
   Test Case Generation Notes:
      Cannot set local variable private_key in branch 1
      Conflict: Unable to control expression-to-expression comparison in branch 2
      Conflict: Unable to control expression-to-expression comparison in branch 3
TEST.END_NOTES:
TEST.END

-- Test Case: BASIS-PATH-004-TEMPLATE
TEST.UNIT:encrypt
TEST.SUBPROGRAM:generate_private_key
TEST.NEW
TEST.NAME:BASIS-PATH-004-TEMPLATE
TEST.BASIS_PATH:4 of 4 (template)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (1) if (private_key.row == -1 && private_key.col == -1) ==> TRUE
      (2) for (i < 4) ==> TRUE
      (3) for (j < 4) ==> TRUE
   Test Case Generation Notes:
      Cannot set local variable private_key in branch 1
      Conflict: Unable to control expression-to-expression comparison in branch 2
      Conflict: Unable to control expression-to-expression comparison in branch 3
TEST.END_NOTES:
TEST.END

-- Subprogram: sendData

-- Test Case: BASIS-PATH-001
TEST.UNIT:encrypt
TEST.SUBPROGRAM:sendData
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) for (i < data.row && i < 4) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:encrypt.sendData.data.row:0
TEST.END

-- Test Case: BASIS-PATH-002-PARTIAL
TEST.UNIT:encrypt
TEST.SUBPROGRAM:sendData
TEST.NEW
TEST.NAME:BASIS-PATH-002-PARTIAL
TEST.BASIS_PATH:2 of 3 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) for (i < data.row && i < 4) ==> TRUE
      (2) for (j < data.col && j < 4) ==> FALSE
   Test Case Generation Notes:
      Conflict: Unable to control expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.VALUE:encrypt.sendData.data.row:1
TEST.VALUE:encrypt.sendData.data.col:0
TEST.END

-- Test Case: BASIS-PATH-003-PARTIAL
TEST.UNIT:encrypt
TEST.SUBPROGRAM:sendData
TEST.NEW
TEST.NAME:BASIS-PATH-003-PARTIAL
TEST.BASIS_PATH:3 of 3 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) for (i < data.row && i < 4) ==> TRUE
      (2) for (j < data.col && j < 4) ==> TRUE
   Test Case Generation Notes:
      Conflict: Unable to control expression-to-expression comparison in branch 1
      Conflict: Unable to control expression-to-expression comparison in branch 2
TEST.END_NOTES:
TEST.VALUE:encrypt.sendData.data.row:1
TEST.VALUE:encrypt.sendData.data.col:1
TEST.END

-- Subprogram: transmit_Info

-- Test Case: BASIS-PATH-001
TEST.UNIT:encrypt
TEST.SUBPROGRAM:transmit_Info
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:encrypt.transmit_Info.name:<<malloc 1>>
TEST.VALUE:encrypt.transmit_Info.Info:<<MIN>>
TEST.END
