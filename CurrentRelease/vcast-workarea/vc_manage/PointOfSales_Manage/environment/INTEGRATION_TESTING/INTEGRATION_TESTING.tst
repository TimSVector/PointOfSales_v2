-- VectorCAST 19.sp3 (11/13/19)
-- Test Case Script
-- 
-- Environment    : INTEGRATION_TESTING
-- Unit(s) Under Test: database encrypt linked_list manager matrix_multiply
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

-- Unit: manager

-- Subprogram: Clear_Table

-- Test Case: Clear_Table.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Clear_Table
TEST.NEW
TEST.NAME:Clear_Table.001
TEST.COMPOUND_ONLY
TEST.VALUE:manager.Clear_Table.Table:1
TEST.EXPECTED:manager.Clear_Table.return:MACRO=SUCCESS
TEST.END

-- Subprogram: Get_Check_Total

-- Test Case: Get_Check_Total.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Check_Total
TEST.NEW
TEST.NAME:Get_Check_Total.001
TEST.COMPOUND_ONLY
TEST.VALUE:manager.Get_Check_Total.Table:1
TEST.EXPECTED:manager.Get_Check_Total.return:MACRO=COST_OF_STEAK
TEST.END

-- Subprogram: Pay_The_Bill

-- Test Case: Pay_The_Bill.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Pay_The_Bill
TEST.NEW
TEST.NAME:Pay_The_Bill.001
TEST.COMPOUND_ONLY
TEST.VALUE:manager.Pay_The_Bill.name:<<malloc 7>>
TEST.VALUE:manager.Pay_The_Bill.name:"Robert"
TEST.VALUE:manager.Pay_The_Bill.cardNumber:<<malloc 5>>
TEST.VALUE:manager.Pay_The_Bill.cardNumber:"0000"
TEST.VALUE:manager.Pay_The_Bill.secCode:<<malloc 4>>
TEST.VALUE:manager.Pay_The_Bill.secCode:"345"
TEST.VALUE:manager.Pay_The_Bill.Table:1
TEST.EXPECTED:manager.Pay_The_Bill.return:MACRO=SUCCESS
TEST.END

-- Subprogram: Place_Order

-- Test Case: Place_Order.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:Place_Order.001
TEST.COMPOUND_ONLY
TEST.VALUE:manager.Place_Order.Table:1
TEST.VALUE:manager.Place_Order.Seat:1
TEST.VALUE:manager.Place_Order.Order.Entree:STEAK
TEST.END

-- Unit: matrix_multiply

-- Subprogram: matrix_multiply

-- Test Case: FAILURESIZERANDOM(2X2X3X2)
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:FAILURESIZERANDOM(2X2X3X2)
TEST.NOTES:
Invalid Matrix Multiplication
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:84
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:68
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:59
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:96
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:62
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:17
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:31
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:68
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:88
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:24
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:-1
TEST.END

-- Test Case: FAILURESIZERANDOM(3X3X2X1)
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:FAILURESIZERANDOM(3X3X2X1)
TEST.NOTES:
Invalid Matrix Multiplication
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:42
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:58
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:11
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:48
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:17
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:88
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:72
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:22
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:49
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:1
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:59
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:24
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:-1
TEST.END

-- Test Case: FAILURESIZERANDOM(3X4X1X3)
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:FAILURESIZERANDOM(3X4X1X3)
TEST.NOTES:
Invalid Matrix Multiplication
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:41
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:90
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:41
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:95
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:30
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:44
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:52
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:12
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:49
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:94
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:9
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:77
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:1
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:13
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:79
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:22
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:-1
TEST.END

-- Test Case: FAILURESIZERANDOM(4X1X4X1)
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:FAILURESIZERANDOM(4X1X4X1)
TEST.NOTES:
Invalid Matrix Multiplication
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:74
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:24
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:60
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:43
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:1
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:47
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:77
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:93
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:88
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:-1
TEST.END

-- Test Case: IDENTITYRAND1
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:IDENTITYRAND1
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:68
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:93
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:76
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:60
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:63
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:20
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:72
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:75
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:80
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:69
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:100
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:78
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:98
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:31
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:24
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:45
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:68
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:93
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:76
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:60
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:63
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:20
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:72
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:75
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:80
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:69
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:100
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:78
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:98
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:31
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:24
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:45
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: IDENTITYRAND2
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:IDENTITYRAND2
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:88
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:54
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:6
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:96
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:87
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:21
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:69
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:29
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:52
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:21
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:35
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:95
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:43
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:73
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:45
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:23
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:88
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:54
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:6
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:96
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:87
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:21
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:69
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:29
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:52
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:21
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:35
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:95
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:43
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:73
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:45
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:23
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: IDENTITYRAND3
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:IDENTITYRAND3
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:23
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:87
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:27
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:93
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:89
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:14
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:51
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:21
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:61
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:69
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:11
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:81
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:7
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:22
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:95
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:23
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:87
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:27
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:93
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:89
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:14
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:51
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:21
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:61
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:69
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:11
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:81
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:7
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:22
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:95
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: IDENTITYRAND4
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:IDENTITYRAND4
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:97
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:6
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:93
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:70
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:12
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:45
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:8
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:43
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:47
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:25
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:22
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:32
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:49
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:86
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:92
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:42
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:97
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:6
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:93
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:70
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:12
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:45
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:8
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:43
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:47
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:25
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:22
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:32
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:49
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:86
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:92
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:42
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: IDENTITYRAND5
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:IDENTITYRAND5
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:15
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:66
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:57
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:38
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:36
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:74
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:81
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:66
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:13
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:93
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:31
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:95
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:84
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:72
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:10
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:15
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:66
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:57
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:38
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:36
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:74
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:81
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:66
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:13
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:93
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:31
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:95
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:84
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:72
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:10
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: IDENTITYTESTSIMPLE
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:IDENTITYTESTSIMPLE
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:11
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:11
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:11
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:11
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:22
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:22
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:22
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:22
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:33
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:33
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:33
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:33
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:44
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:44
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:44
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:44
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:11
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:11
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:11
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:11
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:22
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:22
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:22
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:22
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:33
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:33
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:33
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:33
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:44
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:44
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:44
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:44
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE2X2-1
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE2X2-1
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:81
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:12
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:18
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:34
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:81
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:49
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:66
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:16
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:2
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:2
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:7353
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:4161
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:3702
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:1426
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE2X2-2
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE2X2-2
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:31
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:73
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:93
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:86
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:52
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:96
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:44
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:26
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:2
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:2
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:4824
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:4874
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:8620
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:11164
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE2X2-3
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE2X2-3
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:7
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:48
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:42
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:80
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:33
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:70
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:92
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:91
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:2
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:2
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:4647
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:4858
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:8746
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:10220
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE2X2-4
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE2X2-4
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:96
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:45
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:83
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:37
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:85
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:13
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:32
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:2
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:2
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:8250
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:2688
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:7129
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:2263
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE2X2-5
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE2X2-5
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:31
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:42
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:5
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:98
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:7
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:5
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:5
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:31
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:2
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:2
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:427
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:1457
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:525
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:3063
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE3X3-1
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE3X3-1
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:10
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:14
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:90
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:70
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:30
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:78
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:21
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:13
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:25
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:38
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:35
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:83
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:70
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:95
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:99
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:13
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:85
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:20
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:3
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:3
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:2530
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:9330
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:4016
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:5774
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:11930
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:10340
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:2033
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:4095
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:3530
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE3X3-2
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE3X3-2
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:84
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:65
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:36
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:80
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:39
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:43
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:63
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:21
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:67
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:69
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:64
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:26
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:45
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:7
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:99
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:66
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:100
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:3
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:3
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:8721
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:8207
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:12219
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:7275
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:8231
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:10241
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:5292
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:8601
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:10417
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE3X3-3
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE3X3-3
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:67
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:37
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:33
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:38
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:50
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:98
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:42
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:61
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:14
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:12
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:57
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:5
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:14
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:5
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:46
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:12
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:67
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:32
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:3
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:3
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:1718
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:6215
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:3093
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:2332
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:8982
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:5626
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:1526
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:3637
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:3464
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE3X3-4
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE3X3-4
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:41
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:60
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:72
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:84
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:56
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:94
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:17
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:75
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:28
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:92
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:52
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:60
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:28
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:7
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:97
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:39
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:54
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:3
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:3
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:5039
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:5569
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:2714
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:12488
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:11160
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:7356
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:10927
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:12049
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:9057
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE3X3-5
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE3X3-5
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:70
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:95
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:80
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:62
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:25
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:18
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:72
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:99
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:36
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:57
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:11
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:88
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:19
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:49
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:24
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:43
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:92
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:75
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:3
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:3
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:9235
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:12785
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:14440
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:4783
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:3563
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:7406
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:7533
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:8955
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:11412
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE4X4-1
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE4X4-1
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:23
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:67
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:83
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:18
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:53
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:35
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:46
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:75
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:33
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:81
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:26
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:7
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:89
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:59
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:100
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:76
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:81
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:16
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:92
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:14
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:36
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:52
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:88
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:91
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:95
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:47
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:95
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:86
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:88
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:37
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:15201
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:11902
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:12249
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:8097
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:14446
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:15419
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:13078
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:6863
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:10438
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:6775
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:6530
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:5759
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:21537
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:23671
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:19736
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:10758
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE4X4-2
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE4X4-2
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:15
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:66
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:27
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:26
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:9
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:13
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:46
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:39
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:25
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:34
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:83
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:16
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:10
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:76
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:69
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:22
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:67
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:63
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:42
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:41
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:65
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:38
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:81
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:93
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:50
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:45
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:18
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:65
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:5528
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:3973
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:594
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:4027
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:4925
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:3882
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:1583
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:4557
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:7463
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:6089
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:1825
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:6678
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:9353
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:6890
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:2307
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:7819
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE4X4-3
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE4X4-3
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:21
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:41
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:67
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:76
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:62
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:85
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:98
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:66
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:11
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:87
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:94
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:32
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:87
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:26
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:71
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:21
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:13
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:7
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:55
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:9
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:14
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:6
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:20
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:41
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:43
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:96
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:69
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:57
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:2208
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:10685
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:8846
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:6001
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:3781
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:11925
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:10392
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:8074
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:2500
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:7852
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:7545
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:3327
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:2634
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:9022
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:6640
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:8942
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE4X4-4
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE4X4-4
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:61
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:29
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:97
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:23
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:28
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:90
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:91
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:91
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:91
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:54
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:10
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:56
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:71
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:25
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:88
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:24
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:33
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:10
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:52
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:68
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:50
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:39
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:13
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:48
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:84
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:56
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:67
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:15
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:43
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:9245
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:10806
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:5996
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:9016
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:4706
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:2793
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:6494
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:8925
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:16947
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:12263
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:12731
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:14425
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:6115
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:5936
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:6913
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:9323
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZE4X4-5
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZE4X4-5
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:32
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:53
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:83
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:66
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:98
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:26
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:71
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:15
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:86
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:47
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:9
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:34
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:71
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:59
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:14
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:39
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:98
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:52
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:75
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:30
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:11
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:65
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:21
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:17
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:46
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:52
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:57
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:97
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:27
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:49
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:59
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:10651
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:9319
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:12659
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:12138
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:10308
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:4289
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:11253
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:7804
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:4837
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:4821
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:9255
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:6141
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:5817
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:7205
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:10137
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:8230
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZERANDOM(1X3X3X3)
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZERANDOM(1X3X3X3)
TEST.NOTES:
Random Rectangular matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:47
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:53
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:23
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:82
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:9
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:60
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:93
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:65
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:6
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:85
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:1
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:3
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:3138
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:8876
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:3161
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZERANDOM(1X4X4X1)
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZERANDOM(1X4X4X1)
TEST.NOTES:
Random Rectangular matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:1
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:11
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:61
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:14
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:52
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:1
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:31
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:90
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:76
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:69
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:1
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:1
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:10483
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZERANDOM(2X3X3X3)
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZERANDOM(2X3X3X3)
TEST.NOTES:
Random Rectangular matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:2
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:52
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:91
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:87
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:58
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:59
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:80
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:21
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:16
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:28
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:54
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:28
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:58
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:41
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:71
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:19
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:2
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:3
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:9573
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:9557
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:8387
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:7684
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:8260
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:6566
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZERANDOM(3X4X4X1)
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZERANDOM(3X4X4X1)
TEST.NOTES:
Random Rectangular matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:32
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:97
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:89
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:91
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:30
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:45
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:18
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:81
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:88
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:21
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:85
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:1
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:44
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:6
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:78
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:30
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:3
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:1
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:4972
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:8234
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:8280
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- Test Case: SIZERANDOM(4X3X3X2)
TEST.UNIT:matrix_multiply
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NAME:SIZERANDOM(4X3X3X2)
TEST.NOTES:
Random Rectangular matrices
TEST.END_NOTES:
TEST.VALUE:matrix_multiply.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].row:4
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].col:3
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][0]:14
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][1]:47
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][2]:87
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][0]:63
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][1]:58
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][2]:8
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][0]:58
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][1]:88
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][2]:80
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][0]:86
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][1]:25
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][2]:37
TEST.VALUE:matrix_multiply.matrix_multiply.M1[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].row:3
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].col:2
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][0]:35
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][1]:67
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[0][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][0]:11
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][1]:34
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[1][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][0]:82
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][1]:84
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[2][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][0]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][1]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][2]:0
TEST.VALUE:matrix_multiply.matrix_multiply.M2[0].matrix[3][3]:0
TEST.VALUE:matrix_multiply.matrix_multiply.result:<<malloc 1>>
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].row:4
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].col:2
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][0]:8141
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][1]:9844
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[0][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][0]:3499
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][1]:6865
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[1][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][0]:9558
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][1]:13598
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[2][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][0]:6319
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][1]:9720
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][2]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.result[0].matrix[3][3]:0
TEST.EXPECTED:matrix_multiply.matrix_multiply.return:0
TEST.END

-- COMPOUND TESTS

TEST.SUBPROGRAM:<<COMPOUND>>
TEST.NEW
TEST.NAME:Steak_Sequence
TEST.SLOT: "1", "manager", "Place_Order", "1", "Place_Order.001"
TEST.SLOT: "2", "manager", "Get_Check_Total", "1", "Get_Check_Total.001"
TEST.SLOT: "3", "manager", "Pay_The_Bill", "1", "Pay_The_Bill.001"
TEST.SLOT: "4", "manager", "Clear_Table", "1", "Clear_Table.001"
TEST.END
--
