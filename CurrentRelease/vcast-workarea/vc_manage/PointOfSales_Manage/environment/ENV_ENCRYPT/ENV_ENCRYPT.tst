-- VectorCAST 19.sp2 (09/10/19)
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
TEST.SCRIPT_FEATURE:STANDARD_SPACING_R2
TEST.SCRIPT_FEATURE:OVERLOADED_CONST_SUPPORT
TEST.SCRIPT_FEATURE:UNDERSCORE_NULLPTR
TEST.SCRIPT_FEATURE:FULL_PARAMETER_TYPES
TEST.SCRIPT_FEATURE:STRUCT_DTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:STRUCT_FIELD_CTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
TEST.SCRIPT_FEATURE:VCAST_MAIN_NOT_RENAMED
--

-- Unit: encrypt

-- Subprogram: Encrypt_Info

-- Test Case: Encrypt_Info.001
TEST.UNIT:encrypt
TEST.SUBPROGRAM:Encrypt_Info
TEST.NEW
TEST.NAME:Encrypt_Info.001
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:encrypt.Encrypt_Info.private_key:<<malloc 1>>
TEST.VALUE:encrypt.Encrypt_Info.name:<<malloc 1>>
TEST.VALUE:encrypt.Encrypt_Info.Info:<<MIN>>
TEST.END

-- Subprogram: encrypt_and_send

-- Test Case: encrypt_and_send.001
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:encrypt_and_send.001
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

-- Test Case: encrypt_and_send.002
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:encrypt_and_send.002
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

-- Test Case: encrypt_and_send.003
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:encrypt_and_send.003
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

-- Test Case: encrypt_and_send.004
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:encrypt_and_send.004
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

-- Test Case: encrypt_and_send.005
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:encrypt_and_send.005
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

-- Test Case: encrypt_and_send.006
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:encrypt_and_send.006
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

-- Test Case: encrypt_and_send.007
TEST.UNIT:encrypt
TEST.SUBPROGRAM:encrypt_and_send
TEST.NEW
TEST.NAME:encrypt_and_send.007
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

-- Test Case: generate_private_key.001
TEST.UNIT:encrypt
TEST.SUBPROGRAM:generate_private_key
TEST.NEW
TEST.NAME:generate_private_key.001
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (private_key.row == -1 && private_key.col == -1) ==> FALSE
   Test Case Generation Notes:
      Cannot set local variable private_key in branch 1
TEST.END_NOTES:
TEST.END

-- Test Case: generate_private_key.002
TEST.UNIT:encrypt
TEST.SUBPROGRAM:generate_private_key
TEST.NEW
TEST.NAME:generate_private_key.002
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

-- Test Case: generate_private_key.003
TEST.UNIT:encrypt
TEST.SUBPROGRAM:generate_private_key
TEST.NEW
TEST.NAME:generate_private_key.003
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

-- Test Case: generate_private_key.004
TEST.UNIT:encrypt
TEST.SUBPROGRAM:generate_private_key
TEST.NEW
TEST.NAME:generate_private_key.004
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

-- Test Case: sendData.001
TEST.UNIT:encrypt
TEST.SUBPROGRAM:sendData
TEST.NEW
TEST.NAME:sendData.001
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) for (i < data.row && i < 4) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:encrypt.sendData.data.row:0
TEST.END

-- Test Case: sendData.002
TEST.UNIT:encrypt
TEST.SUBPROGRAM:sendData
TEST.NEW
TEST.NAME:sendData.002
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

-- Test Case: sendData.003
TEST.UNIT:encrypt
TEST.SUBPROGRAM:sendData
TEST.NEW
TEST.NAME:sendData.003
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

-- Test Case: transmit_Info.001
TEST.UNIT:encrypt
TEST.SUBPROGRAM:transmit_Info
TEST.NEW
TEST.NAME:transmit_Info.001
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:encrypt.transmit_Info.name:<<malloc 1>>
TEST.VALUE:encrypt.transmit_Info.Info:<<MIN>>
TEST.END
