-- Generated from mm-csv2tst.csv on 08/28/2013
-- VectorCast Test Case Script
--
-- Test Case created from row #2 : Square matrices,Identity Test Simple,<<malloc 1>>,4,4,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,<<malloc 1>>,4,4,11,11,11,11,22,22,22,22,33,33,33,33,44,44,44,44,<<malloc 1>>,4,4,11,11,11,11,22,22,22,22,33,33,33,33,44,44,44,44,0
--
TEST.UNIT:mm
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Identity Test Simple
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :4
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :1
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :11
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :11
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :11
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :11
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :22
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :22
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :22
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :22
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :33
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :33
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :33
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :33
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :44
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :44
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :44
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :44
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :11
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :11
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :11
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :11
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :22
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :22
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :22
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :22
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :33
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :33
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :33
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :33
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :44
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :44
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :44
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :44
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #3 : Square matrices,Identity Rand 1,<<malloc 1>>,4,4,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,<<malloc 1>>,4,4,68,93,76,60,63,20,72,75,80,69,100,78,98,31,24,45,<<malloc 1>>,4,4,68,93,76,60,63,20,72,75,80,69,100,78,98,31,24,45,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Identity Rand 1
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :4
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :1
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :68
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :93
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :76
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :60
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :63
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :20
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :72
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :75
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :80
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :69
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :100
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :78
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :98
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :31
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :24
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :45
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :68
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :93
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :76
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :60
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :63
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :20
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :72
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :75
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :80
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :69
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :100
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :78
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :98
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :31
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :24
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :45
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #4 : Square matrices,Identity Rand 2,<<malloc 1>>,4,4,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,<<malloc 1>>,4,4,88,54,6,96,87,21,69,29,52,21,35,95,43,73,45,23,<<malloc 1>>,4,4,88,54,6,96,87,21,69,29,52,21,35,95,43,73,45,23,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Identity Rand 2
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :4
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :1
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :88
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :54
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :6
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :96
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :87
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :21
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :69
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :29
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :52
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :21
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :35
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :95
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :43
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :73
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :45
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :23
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :88
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :54
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :6
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :96
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :87
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :21
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :69
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :29
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :52
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :21
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :35
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :95
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :43
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :73
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :45
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :23
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #5 : Square matrices,Identity Rand 3,<<malloc 1>>,4,4,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,<<malloc 1>>,4,4,23,87,27,93,4,89,14,51,21,61,69,11,81,7,22,95,<<malloc 1>>,4,4,23,87,27,93,4,89,14,51,21,61,69,11,81,7,22,95,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Identity Rand 3
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :4
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :1
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :23
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :87
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :27
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :93
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :89
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :14
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :51
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :21
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :61
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :69
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :11
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :81
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :7
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :22
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :95
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :23
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :87
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :27
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :93
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :89
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :14
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :51
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :21
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :61
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :69
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :11
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :81
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :7
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :22
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :95
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #6 : Square matrices,Identity Rand 4,<<malloc 1>>,4,4,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,<<malloc 1>>,4,4,97,6,93,70,12,45,8,43,47,25,22,32,49,86,92,42,<<malloc 1>>,4,4,97,6,93,70,12,45,8,43,47,25,22,32,49,86,92,42,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Identity Rand 4
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :4
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :1
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :97
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :6
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :93
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :70
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :12
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :45
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :8
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :43
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :47
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :25
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :22
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :32
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :49
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :86
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :92
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :42
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :97
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :6
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :93
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :70
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :12
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :45
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :8
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :43
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :47
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :25
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :22
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :32
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :49
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :86
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :92
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :42
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #7 : Square matrices,Identity Rand 5,<<malloc 1>>,4,4,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,<<malloc 1>>,4,4,15,66,57,38,36,4,74,81,66,13,93,31,95,84,72,10,<<malloc 1>>,4,4,15,66,57,38,36,4,74,81,66,13,93,31,95,84,72,10,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Identity Rand 5
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :4
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :1
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :15
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :66
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :57
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :38
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :36
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :74
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :81
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :66
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :13
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :93
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :31
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :95
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :84
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :72
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :10
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :15
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :66
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :57
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :38
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :36
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :74
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :81
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :66
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :13
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :93
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :31
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :95
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :84
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :72
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :10
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #8 : Square matrices,Size 2x2 - 1,<<malloc 1>>,2,2,81,12,0,0,18,34,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,2,2,81,49,0,0,66,16,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,2,2,7353,4161,0,0,3702,1426,0,0,0,0,0,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 2x2 - 1
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :2
TEST.VALUE:mm.matrix_multiply.M1[0].col   :2
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :81
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :12
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :18
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :34
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :2
TEST.VALUE:mm.matrix_multiply.M2[0].col   :2
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :81
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :49
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :66
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :16
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :2
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :2
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :7353
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :4161
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :3702
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :1426
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #9 : Square matrices,Size 2x2 - 2,<<malloc 1>>,2,2,31,73,0,0,93,86,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,2,2,52,96,0,0,44,26,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,2,2,4824,4874,0,0,8620,11164,0,0,0,0,0,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 2x2 - 2
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :2
TEST.VALUE:mm.matrix_multiply.M1[0].col   :2
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :31
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :73
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :93
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :86
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :2
TEST.VALUE:mm.matrix_multiply.M2[0].col   :2
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :52
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :96
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :44
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :26
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :2
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :2
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :4824
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :4874
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :8620
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :11164
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #10 : Square matrices,Size 2x2 - 3,<<malloc 1>>,2,2,7,48,0,0,42,80,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,2,2,33,70,0,0,92,91,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,2,2,4647,4858,0,0,8746,10220,0,0,0,0,0,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 2x2 - 3
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :2
TEST.VALUE:mm.matrix_multiply.M1[0].col   :2
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :7
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :48
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :42
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :80
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :2
TEST.VALUE:mm.matrix_multiply.M2[0].col   :2
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :33
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :70
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :92
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :91
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :2
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :2
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :4647
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :4858
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :8746
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :10220
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #11 : Square matrices,Size 2x2 - 4,<<malloc 1>>,2,2,96,45,0,0,83,37,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,2,2,85,13,0,0,2,32,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,2,2,8250,2688,0,0,7129,2263,0,0,0,0,0,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 2x2 - 4
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :2
TEST.VALUE:mm.matrix_multiply.M1[0].col   :2
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :96
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :45
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :83
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :37
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :2
TEST.VALUE:mm.matrix_multiply.M2[0].col   :2
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :85
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :13
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :2
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :32
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :2
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :2
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :8250
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :2688
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :7129
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :2263
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #12 : Square matrices,Size 2x2 - 5,<<malloc 1>>,2,2,31,42,0,0,5,98,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,2,2,7,5,0,0,5,31,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,2,2,427,1457,0,0,525,3063,0,0,0,0,0,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 2x2 - 5
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :2
TEST.VALUE:mm.matrix_multiply.M1[0].col   :2
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :31
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :42
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :5
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :98
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :2
TEST.VALUE:mm.matrix_multiply.M2[0].col   :2
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :7
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :5
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :5
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :31
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :2
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :2
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :427
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :1457
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :525
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :3063
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #13 : Square matrices,Size 3x3 - 1,<<malloc 1>>,3,3,10,14,90,0,70,30,78,0,21,13,25,0,0,0,0,0,<<malloc 1>>,3,3,38,35,83,0,70,95,99,0,13,85,20,0,0,0,0,0,<<malloc 1>>,3,3,2530,9330,4016,0,5774,11930,10340,0,2033,4095,3530,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 3x3 - 1
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :3
TEST.VALUE:mm.matrix_multiply.M1[0].col   :3
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :10
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :14
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :90
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :70
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :30
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :78
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :21
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :13
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :25
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :3
TEST.VALUE:mm.matrix_multiply.M2[0].col   :3
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :38
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :35
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :83
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :70
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :95
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :99
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :13
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :85
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :20
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :3
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :3
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :2530
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :9330
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :4016
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :5774
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :11930
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :10340
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :2033
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :4095
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :3530
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #14 : Square matrices,Size 3x3 - 2,<<malloc 1>>,3,3,84,65,36,0,80,39,43,0,63,21,67,0,0,0,0,0,<<malloc 1>>,3,3,69,64,26,0,45,7,99,0,0,66,100,0,0,0,0,0,<<malloc 1>>,3,3,8721,8207,12219,0,7275,8231,10241,0,5292,8601,10417,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 3x3 - 2
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :3
TEST.VALUE:mm.matrix_multiply.M1[0].col   :3
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :84
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :65
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :36
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :80
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :39
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :43
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :63
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :21
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :67
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :3
TEST.VALUE:mm.matrix_multiply.M2[0].col   :3
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :69
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :64
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :26
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :45
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :7
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :99
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :66
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :100
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :3
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :3
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :8721
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :8207
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :12219
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :7275
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :8231
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :10241
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :5292
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :8601
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :10417
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #15 : Square matrices,Size 3x3 - 3,<<malloc 1>>,3,3,67,37,33,0,38,50,98,0,42,61,14,0,0,0,0,0,<<malloc 1>>,3,3,12,57,5,0,14,5,46,0,12,67,32,0,0,0,0,0,<<malloc 1>>,3,3,1718,6215,3093,0,2332,8982,5626,0,1526,3637,3464,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 3x3 - 3
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :3
TEST.VALUE:mm.matrix_multiply.M1[0].col   :3
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :67
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :37
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :33
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :38
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :50
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :98
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :42
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :61
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :14
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :3
TEST.VALUE:mm.matrix_multiply.M2[0].col   :3
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :12
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :57
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :5
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :14
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :5
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :46
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :12
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :67
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :32
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :3
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :3
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :1718
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :6215
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :3093
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :2332
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :8982
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :5626
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :1526
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :3637
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :3464
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #16 : Square matrices,Size 3x3 - 4,<<malloc 1>>,3,3,41,60,3,0,72,84,56,0,94,17,75,0,0,0,0,0,<<malloc 1>>,3,3,28,92,52,0,60,28,7,0,97,39,54,0,0,0,0,0,<<malloc 1>>,3,3,5039,5569,2714,0,12488,11160,7356,0,10927,12049,9057,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 3x3 - 4
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :3
TEST.VALUE:mm.matrix_multiply.M1[0].col   :3
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :41
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :60
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :3
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :72
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :84
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :56
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :94
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :17
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :75
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :3
TEST.VALUE:mm.matrix_multiply.M2[0].col   :3
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :28
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :92
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :52
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :60
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :28
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :7
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :97
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :39
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :54
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :3
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :3
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :5039
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :5569
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :2714
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :12488
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :11160
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :7356
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :10927
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :12049
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :9057
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #17 : Square matrices,Size 3x3 - 5,<<malloc 1>>,3,3,70,95,80,0,62,25,18,0,72,99,36,0,0,0,0,0,<<malloc 1>>,3,3,57,11,88,0,19,49,24,0,43,92,75,0,0,0,0,0,<<malloc 1>>,3,3,9235,12785,14440,0,4783,3563,7406,0,7533,8955,11412,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 3x3 - 5
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :3
TEST.VALUE:mm.matrix_multiply.M1[0].col   :3
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :70
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :95
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :80
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :62
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :25
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :18
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :72
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :99
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :36
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :3
TEST.VALUE:mm.matrix_multiply.M2[0].col   :3
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :57
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :11
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :88
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :19
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :49
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :24
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :43
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :92
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :75
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :3
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :3
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :9235
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :12785
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :14440
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :4783
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :3563
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :7406
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :7533
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :8955
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :11412
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #18 : Square matrices,Size 4x4- 1,<<malloc 1>>,4,4,23,67,83,18,53,35,46,75,33,81,26,7,89,59,100,76,<<malloc 1>>,4,4,1,81,16,2,92,14,36,52,88,91,95,47,95,86,88,37,<<malloc 1>>,4,4,15201,11902,12249,8097,14446,15419,13078,6863,10438,6775,6530,5759,21537,23671,19736,10758,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 4x4- 1
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :4
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :23
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :67
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :83
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :18
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :53
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :35
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :46
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :75
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :33
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :81
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :26
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :7
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :89
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :59
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :100
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :76
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :1
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :81
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :16
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :2
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :92
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :14
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :36
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :52
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :88
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :91
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :95
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :47
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :95
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :86
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :88
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :37
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :15201
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :11902
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :12249
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :8097
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :14446
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :15419
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :13078
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :6863
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :10438
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :6775
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :6530
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :5759
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :21537
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :23671
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :19736
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :10758
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #19 : Square matrices,Size 4x4 -2,<<malloc 1>>,4,4,15,66,2,2,27,26,9,13,46,39,4,25,34,83,16,10,<<malloc 1>>,4,4,76,69,22,67,63,42,1,41,65,38,81,93,50,45,18,65,<<malloc 1>>,4,4,5528,3973,594,4027,4925,3882,1583,4557,7463,6089,1825,6678,9353,6890,2307,7819,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 4x4 -2
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :4
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :15
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :66
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :2
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :2
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :27
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :26
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :9
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :13
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :46
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :39
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :25
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :34
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :83
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :16
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :10
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :76
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :69
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :22
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :67
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :63
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :42
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :1
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :41
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :65
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :38
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :81
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :93
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :50
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :45
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :18
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :65
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :5528
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :3973
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :594
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :4027
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :4925
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :3882
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :1583
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :4557
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :7463
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :6089
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :1825
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :6678
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :9353
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :6890
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :2307
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :7819
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #20 : Square matrices,Size 4x4- 3,<<malloc 1>>,4,4,21,41,67,76,62,85,98,66,11,87,94,32,87,1,26,71,<<malloc 1>>,4,4,21,13,7,55,3,9,14,6,20,41,43,4,4,96,69,57,<<malloc 1>>,4,4,2208,10685,8846,6001,3781,11925,10392,8074,2500,7852,7545,3327,2634,9022,6640,8942,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 4x4- 3
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :4
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :21
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :41
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :67
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :76
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :62
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :85
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :98
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :66
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :11
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :87
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :94
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :32
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :87
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :26
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :71
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :21
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :13
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :7
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :55
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :3
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :9
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :14
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :6
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :20
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :41
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :43
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :96
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :69
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :57
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :2208
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :10685
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :8846
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :6001
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :3781
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :11925
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :10392
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :8074
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :2500
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :7852
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :7545
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :3327
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :2634
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :9022
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :6640
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :8942
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #21 : Square matrices,Size 4x4- 4,<<malloc 1>>,4,4,3,61,29,97,23,28,90,1,91,91,91,54,10,56,71,25,<<malloc 1>>,4,4,88,24,33,10,52,68,50,39,13,3,48,84,56,67,15,43,<<malloc 1>>,4,4,9245,10806,5996,9016,4706,2793,6494,8925,16947,12263,12731,14425,6115,5936,6913,9323,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 4x4- 4
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :4
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :3
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :61
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :29
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :97
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :23
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :28
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :90
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :91
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :91
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :91
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :54
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :10
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :56
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :71
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :25
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :88
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :24
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :33
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :10
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :52
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :68
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :50
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :39
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :13
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :3
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :48
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :84
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :56
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :67
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :15
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :43
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :9245
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :10806
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :5996
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :9016
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :4706
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :2793
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :6494
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :8925
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :16947
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :12263
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :12731
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :14425
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :6115
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :5936
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :6913
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :9323
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #22 : Square matrices,Size 4x4 - 5,<<malloc 1>>,4,4,32,53,83,66,1,98,26,71,15,86,47,9,34,71,59,14,<<malloc 1>>,4,4,39,98,52,75,30,11,65,21,17,46,52,57,97,27,49,59,<<malloc 1>>,4,4,10651,9319,12659,12138,10308,4289,11253,7804,4837,4821,9255,6141,5817,7205,10137,8230,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Square matrices
TEST.END_NOTES:
TEST.NAME:Size 4x4 - 5
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :4
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :32
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :53
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :83
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :66
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :98
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :26
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :71
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :15
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :86
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :47
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :9
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :34
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :71
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :59
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :14
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :4
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :39
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :98
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :52
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :75
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :30
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :11
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :65
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :21
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :17
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :46
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :52
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :57
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :97
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :27
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :49
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :59
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :10651
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :9319
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :12659
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :12138
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :10308
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :4289
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :11253
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :7804
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :4837
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :4821
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :9255
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :6141
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :5817
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :7205
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :10137
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :8230
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #23 : Random Rectangular matrices,Size Random (1x4 X 4x1),<<malloc 1>>,1,4,11,61,14,52,0,0,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,4,1,31,0,0,0,90,0,0,0,76,0,0,0,69,0,0,0,<<malloc 1>>,1,1,10483,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Random Rectangular matrices
TEST.END_NOTES:
TEST.NAME:Size Random (1x4 X 4x1)
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :1
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :11
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :61
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :14
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :52
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :1
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :31
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :90
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :76
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :69
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :1
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :1
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :10483
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #24 : Random Rectangular matrices,Size Random (1x3 X 3x3),<<malloc 1>>,1,3,0,47,53,0,0,0,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,3,3,23,82,9,0,60,93,65,0,6,85,2,0,0,0,0,0,<<malloc 1>>,1,3,3138,8876,3161,0,0,0,0,0,0,0,0,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Random Rectangular matrices
TEST.END_NOTES:
TEST.NAME:Size Random (1x3 X 3x3)
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :1
TEST.VALUE:mm.matrix_multiply.M1[0].col   :3
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :47
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :53
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :3
TEST.VALUE:mm.matrix_multiply.M2[0].col   :3
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :23
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :82
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :9
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :60
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :93
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :65
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :6
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :85
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :2
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :1
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :3
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :3138
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :8876
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :3161
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #25 : Random Rectangular matrices,Size Random (3x4 X 4x1),<<malloc 1>>,3,4,32,97,4,89,91,30,45,18,81,88,21,85,0,0,0,0,<<malloc 1>>,4,1,44,0,0,0,6,0,0,0,78,0,0,0,30,0,0,0,<<malloc 1>>,3,1,4972,0,0,0,8234,0,0,0,8280,0,0,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Random Rectangular matrices
TEST.END_NOTES:
TEST.NAME:Size Random (3x4 X 4x1)
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :3
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :32
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :97
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :89
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :91
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :30
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :45
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :18
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :81
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :88
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :21
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :85
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :1
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :44
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :6
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :78
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :30
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :3
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :1
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :4972
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :8234
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :8280
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #26 : Random Rectangular matrices,Size Random (2x3 X 3x3),<<malloc 1>>,2,3,52,91,87,0,58,59,80,0,0,0,0,0,0,0,0,0,<<malloc 1>>,3,3,21,16,28,0,54,28,58,0,41,71,19,0,0,0,0,0,<<malloc 1>>,2,3,9573,9557,8387,0,7684,8260,6566,0,0,0,0,0,0,0,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Random Rectangular matrices
TEST.END_NOTES:
TEST.NAME:Size Random (2x3 X 3x3)
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :2
TEST.VALUE:mm.matrix_multiply.M1[0].col   :3
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :52
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :91
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :87
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :58
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :59
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :80
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :3
TEST.VALUE:mm.matrix_multiply.M2[0].col   :3
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :21
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :16
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :28
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :54
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :28
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :58
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :41
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :71
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :19
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :2
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :3
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :9573
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :9557
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :8387
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :7684
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :8260
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :6566
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #27 : Random Rectangular matrices,Size Random (4x3 X 3x2),<<malloc 1>>,4,3,14,47,87,0,63,58,8,0,58,88,80,0,86,25,37,0,<<malloc 1>>,3,2,35,67,0,0,11,34,0,0,82,84,0,0,0,0,0,0,<<malloc 1>>,4,2,8141,9844,0,0,3499,6865,0,0,9558,13598,0,0,6319,9720,0,0,0
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Random Rectangular matrices
TEST.END_NOTES:
TEST.NAME:Size Random (4x3 X 3x2)
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :4
TEST.VALUE:mm.matrix_multiply.M1[0].col   :3
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :14
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :47
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :87
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :63
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :58
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :8
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :58
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :88
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :80
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :86
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :25
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :37
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :3
TEST.VALUE:mm.matrix_multiply.M2[0].col   :2
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :35
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :67
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :11
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :34
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :82
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :84
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.result[0].row   :4
TEST.EXPECTED:mm.matrix_multiply.result[0].col   :2
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][0]   :8141
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][1]   :9844
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[0][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][0]   :3499
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][1]   :6865
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[1][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][0]   :9558
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][1]   :13598
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[2][3]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][0]   :6319
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][1]   :9720
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][2]   :0
TEST.EXPECTED:mm.matrix_multiply.result[0].matrix[3][3]   :0
TEST.EXPECTED:mm.matrix_multiply.return:0
TEST.END
--
-- Test Case created from row #28 : Invalid Matrix Multiplication,Failure Size Random (4x1 X 4x1),<<malloc 1>>,4,1,74,0,0,0,24,0,0,0,60,0,0,0,43,0,0,0,<<malloc 1>>,4,1,47,0,0,0,77,0,0,0,93,0,0,0,88,0,0,0,<<malloc 1>>,,,,,,,,,,,,,,,,,,,-1
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Invalid Matrix Multiplication
TEST.END_NOTES:
TEST.NAME:Failure Size Random (4x1 X 4x1)
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :4
TEST.VALUE:mm.matrix_multiply.M1[0].col   :1
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :74
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :24
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :60
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :43
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :4
TEST.VALUE:mm.matrix_multiply.M2[0].col   :1
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :47
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :77
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :93
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :88
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.return:-1
TEST.END
--
-- Test Case created from row #29 : Invalid Matrix Multiplication,Failure Size Random (2x2 X 3x2),<<malloc 1>>,2,2,84,68,0,0,59,96,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,3,2,62,17,0,0,31,68,0,0,88,24,0,0,0,0,0,0,<<malloc 1>>,,,,,,,,,,,,,,,,,,,-1
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Invalid Matrix Multiplication
TEST.END_NOTES:
TEST.NAME:Failure Size Random (2x2 X 3x2)
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :2
TEST.VALUE:mm.matrix_multiply.M1[0].col   :2
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :84
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :68
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :59
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :96
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :3
TEST.VALUE:mm.matrix_multiply.M2[0].col   :2
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :62
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :17
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :31
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :68
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :88
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :24
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.return:-1
TEST.END
--
-- Test Case created from row #30 : Invalid Matrix Multiplication,Failure Size Random (3x3 X 2x1),<<malloc 1>>,3,3,42,58,11,0,48,17,88,0,72,22,49,0,0,0,0,0,<<malloc 1>>,2,1,59,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,,,,,,,,,,,,,,,,,,,-1
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Invalid Matrix Multiplication
TEST.END_NOTES:
TEST.NAME:Failure Size Random (3x3 X 2x1)
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :3
TEST.VALUE:mm.matrix_multiply.M1[0].col   :3
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :42
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :58
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :11
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :48
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :17
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :88
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :72
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :22
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :49
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :2
TEST.VALUE:mm.matrix_multiply.M2[0].col   :1
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :59
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :24
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.return:-1
TEST.END
--
-- Test Case created from row #31 : Invalid Matrix Multiplication,Failure Size Random (3x4 X 1x3),<<malloc 1>>,3,4,41,90,41,95,30,44,52,12,49,94,9,77,0,0,0,0,<<malloc 1>>,1,3,13,79,22,0,0,0,0,0,0,0,0,0,0,0,0,0,<<malloc 1>>,,,,,,,,,,,,,,,,,,,-1
--
TEST.SUBPROGRAM:matrix_multiply
TEST.NEW
TEST.NOTES:
Invalid Matrix Multiplication
TEST.END_NOTES:
TEST.NAME:Failure Size Random (3x4 X 1x3)
TEST.VALUE:mm.matrix_multiply.M1:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M1[0].row   :3
TEST.VALUE:mm.matrix_multiply.M1[0].col   :4
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][0]   :41
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][1]   :90
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][2]   :41
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[0][3]   :95
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][0]   :30
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][1]   :44
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][2]   :52
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[1][3]   :12
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][0]   :49
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][1]   :94
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][2]   :9
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[2][3]   :77
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M1[0].matrix[3][3]   :0
TEST.VALUE:mm.matrix_multiply.M2:<<malloc 1>>
TEST.VALUE:mm.matrix_multiply.M2[0].row   :1
TEST.VALUE:mm.matrix_multiply.M2[0].col   :3
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][0]   :13
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][1]   :79
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][2]   :22
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[0][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[1][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[2][3]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][0]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][1]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][2]   :0
TEST.VALUE:mm.matrix_multiply.M2[0].matrix[3][3]    :0
TEST.EXPECTED:mm.matrix_multiply.result :<<malloc 1>>
TEST.EXPECTED:mm.matrix_multiply.return:-1
TEST.END
--
