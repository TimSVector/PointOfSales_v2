-- VectorCAST 21.sp3 (08/04/21)
-- Test Case Script
--
-- Environment    : UUT_MANAGER
-- Unit(s) Under Test: manager
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

-- Unit: manager

-- Subprogram: Place_Order

-- Test Case: BASIS-PATH-001
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (5) case (Order.Entree) ==> PASTA
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:PASTA
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) case (Order.Entree) ==> NO_ENTREE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:NO_ENTREE
TEST.END

-- Test Case: BASIS-PATH-003
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:BASIS-PATH-003
TEST.BASIS_PATH:3 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (2) case (Order.Entree) ==> STEAK
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:STEAK
TEST.END

-- Test Case: BASIS-PATH-004
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:BASIS-PATH-004
TEST.BASIS_PATH:4 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (3) case (Order.Entree) ==> CHICKEN
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:CHICKEN
TEST.END

-- Test Case: BASIS-PATH-005
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:BASIS-PATH-005
TEST.BASIS_PATH:5 of 5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 5
      (4) case (Order.Entree) ==> LOBSTER
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Place_Order.Table:<<MIN>>
TEST.VALUE:manager.Place_Order.Seat:<<MIN>>
TEST.VALUE:manager.Place_Order.Order.Entree:LOBSTER
TEST.END

-- Test Case: Place_Order.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:Place_Order.001
TEST.END

-- Test Case: Place_Order.002
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:Place_Order.002
TEST.REQUIREMENT_KEY:Diner/VEC-511
TEST.REQUIREMENT_KEY:Diner/VEC-518
TEST.VALUE:manager.Place_Order.Table:1
TEST.VALUE:manager.Place_Order.Seat:1
TEST.VALUE:manager.Place_Order.Order.Entree:LOBSTER
TEST.EXPECTED:manager.Place_Order.return:0
TEST.END

-- Subprogram: temp_monitor

-- Test Case: temp_monitor.001
TEST.UNIT:manager
TEST.SUBPROGRAM:temp_monitor
TEST.NEW
TEST.NAME:temp_monitor.001
TEST.VALUE:manager.temp_monitor.func_ptr:<<null>>
TEST.VALUE:manager.temp_monitor.scale:CELSIUS
TEST.EXPECTED:manager.temp_monitor.return:BAD_GAUGE
TEST.END

-- Test Case: temp_monitor.002
TEST.UNIT:manager
TEST.SUBPROGRAM:temp_monitor
TEST.NEW
TEST.NAME:temp_monitor.002
TEST.VALUE:manager.temp_monitor.func_ptr:helper
TEST.VALUE:manager.temp_monitor.scale:CELSIUS
TEST.VALUE:uut_prototype_stubs.helper.return:-10.0
TEST.EXPECTED:manager.temp_monitor.return:FREEZING
TEST.END

-- Test Case: temp_monitor.003
TEST.UNIT:manager
TEST.SUBPROGRAM:temp_monitor
TEST.NEW
TEST.NAME:temp_monitor.003
TEST.VALUE:manager.temp_monitor.func_ptr:helper
TEST.VALUE:manager.temp_monitor.scale:CELSIUS
TEST.VALUE:uut_prototype_stubs.helper.return:110.0
TEST.EXPECTED:manager.temp_monitor.return:BOILING
TEST.END

-- Test Case: temp_monitor.004
TEST.UNIT:manager
TEST.SUBPROGRAM:temp_monitor
TEST.NEW
TEST.NAME:temp_monitor.004
TEST.VALUE:manager.temp_monitor.func_ptr:helper
TEST.VALUE:manager.temp_monitor.scale:CELSIUS
TEST.VALUE:uut_prototype_stubs.helper.return:50.0
TEST.EXPECTED:manager.temp_monitor.return:NORMAL
TEST.END

-- Test Case: temp_monitor.005
TEST.UNIT:manager
TEST.SUBPROGRAM:temp_monitor
TEST.NEW
TEST.NAME:temp_monitor.005
TEST.VALUE:manager.temp_monitor.func_ptr:helper
TEST.VALUE:manager.temp_monitor.scale:FAHRENHEIT
TEST.VALUE:uut_prototype_stubs.helper.return:50.0
TEST.EXPECTED:manager.temp_monitor.return:NORMAL
TEST.END

-- Test Case: temp_monitor.006
TEST.UNIT:manager
TEST.SUBPROGRAM:temp_monitor
TEST.NEW
TEST.NAME:temp_monitor.006
TEST.VALUE:manager.temp_monitor.func_ptr:helper
TEST.VALUE:manager.temp_monitor.scale:FAHRENHEIT
TEST.VALUE:uut_prototype_stubs.helper.return:30.0
TEST.EXPECTED:manager.temp_monitor.return:FREEZING
TEST.END

-- Test Case: temp_monitor.007
TEST.UNIT:manager
TEST.SUBPROGRAM:temp_monitor
TEST.NEW
TEST.NAME:temp_monitor.007
TEST.VALUE:manager.temp_monitor.func_ptr:helper
TEST.VALUE:manager.temp_monitor.scale:FAHRENHEIT
TEST.VALUE:uut_prototype_stubs.helper.return:5000.0
TEST.EXPECTED:manager.temp_monitor.return:BOILING
TEST.END
