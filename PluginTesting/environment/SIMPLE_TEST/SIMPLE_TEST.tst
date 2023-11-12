-- VectorCAST 23.sp4 (10/23/23)
-- Test Case Script
--
-- Environment    : SIMPLE_TEST
-- Unit(s) Under Test: manager
--
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:REMOVED_CL_PREFIX
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STANDARD_SPACING_R2
TEST.SCRIPT_FEATURE:OVERLOADED_CONST_SUPPORT
TEST.SCRIPT_FEATURE:UNDERSCORE_NULLPTR
TEST.SCRIPT_FEATURE:FULL_PARAMETER_TYPES
TEST.SCRIPT_FEATURE:STRUCT_DTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:STRUCT_FIELD_CTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:STRUCT_BASE_CTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
TEST.SCRIPT_FEATURE:VCAST_MAIN_NOT_RENAMED
--

-- Subprogram: <<INIT>>

-- Test Case: <<INIT>>.001
TEST.SUBPROGRAM:<<INIT>>
TEST.NEW
TEST.NAME:<<INIT>>.001
TEST.AUTOMATIC_INITIALIZATION
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.END

-- Unit: manager

-- Subprogram: Manager::AddIncludedDessert

-- Test Case: BASIS-PATH-001
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddIncludedDessert
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (!Order) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order:<<null>>
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddIncludedDessert
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (!Order) ==> FALSE
      (2) if ((Order->Entree == (Steak) && Order->Salad == (Caesar)) && Order->Beverage == (MixedDrink)) ==> FALSE
      (3) if ((Order->Entree == (Lobster) && Order->Salad == (Green)) && Order->Beverage == (Wine)) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order:<<malloc 1>>
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Entree:NoEntree
TEST.END

-- Test Case: BASIS-PATH-003
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddIncludedDessert
TEST.NEW
TEST.NAME:BASIS-PATH-003
TEST.BASIS_PATH:3 of 4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if (!Order) ==> FALSE
      (2) if ((Order->Entree == (Steak) && Order->Salad == (Caesar)) && Order->Beverage == (MixedDrink)) ==> FALSE
      (3) if ((Order->Entree == (Lobster) && Order->Salad == (Green)) && Order->Beverage == (Wine)) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order:<<malloc 1>>
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Salad:Green
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Entree:Lobster
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Beverage:Wine
TEST.END

-- Test Case: BASIS-PATH-004
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddIncludedDessert
TEST.NEW
TEST.NAME:BASIS-PATH-004
TEST.BASIS_PATH:4 of 4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (1) if (!Order) ==> FALSE
      (2) if ((Order->Entree == (Steak) && Order->Salad == (Caesar)) && Order->Beverage == (MixedDrink)) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order:<<malloc 1>>
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Salad:Caesar
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Entree:Steak
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Beverage:MixedDrink
TEST.END

-- Subprogram: Manager::PlaceOrder

-- Test Case: Manager::PlaceOrder.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:Manager::PlaceOrder.001
TEST.COMPOUND_ONLY
TEST.END

-- Test Case: Manager::PlaceOrder.Steak.BadCF
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:Manager::PlaceOrder.Steak.BadCF
TEST.VALUE:manager.Manager::PlaceOrder.Table:1
TEST.VALUE:manager.Manager::PlaceOrder.Seat:1
TEST.VALUE:manager.Manager::PlaceOrder.Order.Entree:Steak
TEST.FLOW
  manager.cpp.Manager::PlaceOrder
  uut_prototype_stubs.DataBase::GetTableRecord
  manager.cpp.Manager::AddIncludedDessert
  uut_prototype_stubs.DataBase::UpdateTableRecord
  manager.cpp.Manager::PlaceOrder
TEST.END_FLOW
TEST.END

-- Test Case: Manager::PlaceOrder.Steak.BadEV
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:Manager::PlaceOrder.Steak.BadEV
TEST.VALUE:manager.Manager::PlaceOrder.Table:1
TEST.VALUE:manager.Manager::PlaceOrder.Seat:1
TEST.VALUE:manager.Manager::PlaceOrder.Order.Entree:Steak
TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].CheckTotal:15
TEST.END

-- Test Case: Manager::PlaceOrder.Steak.CF
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:Manager::PlaceOrder.Steak.CF
TEST.VALUE:manager.Manager::PlaceOrder.Table:1
TEST.VALUE:manager.Manager::PlaceOrder.Seat:1
TEST.VALUE:manager.Manager::PlaceOrder.Order.Entree:Steak
TEST.FLOW
  manager.cpp.<<INIT>>
  manager.cpp.<<INIT>>
  manager.cpp.Manager::PlaceOrder
  uut_prototype_stubs.DataBase::GetTableRecord
  uut_prototype_stubs.DataBase::UpdateTableRecord
  manager.cpp.Manager::PlaceOrder
TEST.END_FLOW
TEST.END

-- Test Case: Manager::PlaceOrder.Steak.EV
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:Manager::PlaceOrder.Steak.EV
TEST.VALUE:manager.Manager::PlaceOrder.Table:1
TEST.VALUE:manager.Manager::PlaceOrder.Seat:1
TEST.VALUE:manager.Manager::PlaceOrder.Order.Entree:Steak
TEST.EXPECTED:uut_prototype_stubs.DataBase::UpdateTableRecord.Data[0].CheckTotal:14
TEST.END

-- Test Case: Manager::PlaceOrder.Steak.NoEV
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:Manager::PlaceOrder.Steak.NoEV
TEST.VALUE:manager.Manager::PlaceOrder.Table:1
TEST.VALUE:manager.Manager::PlaceOrder.Seat:1
TEST.VALUE:manager.Manager::PlaceOrder.Order.Entree:Steak
TEST.END

-- COMPOUND TESTS

TEST.SUBPROGRAM:<<COMPOUND>>
TEST.NEW
TEST.NAME:<<COMPOUND>>.001
TEST.SLOT: "1", "manager", "Manager::PlaceOrder", "1", "Manager::PlaceOrder.Steak.NoEV"
TEST.SLOT: "2", "manager", "Manager::PlaceOrder", "1", "Manager::PlaceOrder.Steak.EV"
TEST.SLOT: "3", "manager", "Manager::PlaceOrder", "1", "Manager::PlaceOrder.Steak.BadEV"
TEST.SLOT: "4", "manager", "Manager::PlaceOrder", "1", "Manager::PlaceOrder.Steak.CF"
TEST.SLOT: "5", "manager", "Manager::PlaceOrder", "1", "Manager::PlaceOrder.Steak.BadCF"
TEST.END
--

-- COMPOUND TESTS

TEST.SUBPROGRAM:<<COMPOUND>>
TEST.NEW
TEST.NAME:<<COMPOUND>>.002
TEST.SLOT: "1", "manager", "Manager::PlaceOrder", "1", "Manager::PlaceOrder.Steak.EV"
TEST.SLOT: "2", "manager", "Manager::PlaceOrder", "1", "Manager::PlaceOrder.Steak.CF"
TEST.END
--
