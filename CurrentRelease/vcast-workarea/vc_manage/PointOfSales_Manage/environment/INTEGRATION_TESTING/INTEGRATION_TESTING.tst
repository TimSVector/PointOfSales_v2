-- VectorCAST 18.sp1 (03/13/18)
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
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
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
TEST.EXPECTED:manager.Clear_Table.return:SUCCESS
TEST.END

-- Subprogram: Get_Check_Total

-- Test Case: Get_Check_Total.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Check_Total
TEST.NEW
TEST.NAME:Get_Check_Total.001
TEST.COMPOUND_ONLY
TEST.VALUE:manager.Get_Check_Total.Table:1
TEST.EXPECTED:manager.Get_Check_Total.return:COST_OF_STEAK
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
TEST.EXPECTED:manager.Pay_The_Bill.return:SUCCESS
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
