-- VectorCAST 25.sp2 (05/18/25)
-- Test Case Script
--
-- Environment    : TUTORIAL_CPP
-- Unit(s) Under Test: database manager
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

-- Unit: database

-- Subprogram: DataBase::DataBase

-- Test Case: ATG-TEST-1
TEST.UNIT:database
TEST.SUBPROGRAM:DataBase::DataBase
TEST.NEW
TEST.NAME:ATG-TEST-1
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
No path constraints
   Test Case Generation Notes:
      We didn't set any values -- maybe we have no visibility/static variable?
TEST.END_NOTES:
TEST.END

-- Subprogram: DataBase::DeleteRecord

-- Test Case: ATG-TEST-1
TEST.UNIT:database
TEST.SUBPROGRAM:DataBase::DeleteRecord
TEST.NEW
TEST.NAME:ATG-TEST-1
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
       #  this->DeleteOneRecord(Table, TableData)
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.VALUE:<<OPTIONS>>.SHOW_ONLY_DATA_WITH_EXPECTED_RESULTS:TRUE
TEST.VALUE:database.<<GLOBAL>>.(cl).DataBase.DataBase.<<constructor>>.DataBase().<<call>>:0
TEST.VALUE:database.DataBase::DeleteRecord.Table:0
TEST.END

-- Subprogram: DataBase::GetTableRecord

-- Test Case: ATG-TEST-1
TEST.UNIT:database
TEST.SUBPROGRAM:DataBase::GetTableRecord
TEST.NEW
TEST.NAME:ATG-TEST-1
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
       #  *Data := TableData[Table]
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.VALUE:database.<<GLOBAL>>.(cl).DataBase.DataBase.<<constructor>>.DataBase().<<call>>:0
TEST.VALUE:database.DataBase::GetTableRecord.Table:4
TEST.VALUE:database.DataBase::GetTableRecord.Data:<<malloc 1>>
TEST.END

-- Subprogram: DataBase::UpdateTableRecord

-- Test Case: ATG-TEST-1
TEST.UNIT:database
TEST.SUBPROGRAM:DataBase::UpdateTableRecord
TEST.NEW
TEST.NAME:ATG-TEST-1
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
       #  TableData[Table] := *Data
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.VALUE:database.<<GLOBAL>>.(cl).DataBase.DataBase.<<constructor>>.DataBase().<<call>>:0
TEST.VALUE:database.DataBase::UpdateTableRecord.Table:5
TEST.VALUE:database.DataBase::UpdateTableRecord.Data:<<malloc 1>>
TEST.END

-- Subprogram: DataBase::~DataBase

-- Test Case: ATG-TEST-1
TEST.UNIT:database
TEST.SUBPROGRAM:DataBase::~DataBase
TEST.NEW
TEST.NAME:ATG-TEST-1
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
No path constraints
   Test Case Generation Notes:

TEST.END_NOTES:
TEST.VALUE:database.<<GLOBAL>>.(cl).DataBase.DataBase.<<constructor>>.DataBase().<<call>>:0
TEST.END

-- Unit: manager

-- Subprogram: Manager::AddIncludedDessert

-- Test Case: ATG-TEST-1
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddIncludedDessert
TEST.NEW
TEST.NAME:ATG-TEST-1
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (!Order) ==> FALSE
      (2) if ((Order->Entree == (Steak) && Order->Salad == (Caesar)) && Order->Beverage == (MixedDrink)) ==> FALSE
      (3) if ((Order->Entree == (Lobster) && Order->Salad == (Green)) && Order->Beverage == (Wine)) ==> FALSE
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order:<<malloc 1>>
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Salad:Green
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Entree:Lobster
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Beverage:NoBeverage
TEST.END

-- Test Case: ATG-TEST-2
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddIncludedDessert
TEST.NEW
TEST.NAME:ATG-TEST-2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (!Order) ==> FALSE
      (2) if ((Order->Entree == (Steak) && Order->Salad == (Caesar)) && Order->Beverage == (MixedDrink)) ==> FALSE
      (3) if ((Order->Entree == (Lobster) && Order->Salad == (Green)) && Order->Beverage == (Wine)) ==> TRUE
       #  Order->Dessert := Cake
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order:<<malloc 1>>
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Salad:Green
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Entree:Lobster
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Dessert:NoDessert
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Beverage:Wine
TEST.END

-- Test Case: ATG-TEST-3
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddIncludedDessert
TEST.NEW
TEST.NAME:ATG-TEST-3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if (!Order) ==> FALSE
      (2) if ((Order->Entree == (Steak) && Order->Salad == (Caesar)) && Order->Beverage == (MixedDrink)) ==> TRUE
       #  Order->Dessert := Pies
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order:<<malloc 1>>
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Salad:Caesar
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Entree:Steak
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Dessert:NoDessert
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Beverage:MixedDrink
TEST.END

-- Test Case: ATG-TEST-4
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddIncludedDessert
TEST.NEW
TEST.NAME:ATG-TEST-4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (1) if (!Order) ==> TRUE
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order:<<null>>
TEST.END

-- Subprogram: Manager::AddPartyToWaitingList

-- Test Case: ATG-TEST-1
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddPartyToWaitingList
TEST.NEW
TEST.NAME:ATG-TEST-1
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
       #  i := 0
      (1) if (WaitingListSize > (9)) ==> FALSE
      (2) while (Name && *Name) ==> FALSE
       #  WaitingList[(WaitingListSize)++][i] := 0
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.WaitingListSize:4
TEST.VALUE:manager.Manager::AddPartyToWaitingList.Name:<<malloc 1>>
TEST.VALUE:manager.Manager::AddPartyToWaitingList.Name[0]:16#0#
TEST.END

-- Test Case: ATG-TEST-2
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddPartyToWaitingList
TEST.NEW
TEST.NAME:ATG-TEST-2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
       #  i := 0
      (1) if (WaitingListSize > (9)) ==> FALSE
      (2) while (Name && *Name) ==> TRUE
       #  WaitingList[WaitingListSize][i++] := *Name
       #  Name++
       #  WaitingList[(WaitingListSize)++][i] := 0
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.WaitingListSize:7
TEST.VALUE:manager.Manager::AddPartyToWaitingList.Name:<<malloc 1>>
TEST.VALUE:manager.Manager::AddPartyToWaitingList.Name[0]:-114
TEST.END

-- Test Case: ATG-TEST-3
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::AddPartyToWaitingList
TEST.NEW
TEST.NAME:ATG-TEST-3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
       #  i := 0
      (1) if (WaitingListSize > (9)) ==> TRUE
       #  WaitingListSize := 0
      (2) while (Name && *Name) ==> FALSE
       #  WaitingList[(WaitingListSize)++][i] := 0
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.WaitingListSize:131081
TEST.VALUE:manager.Manager::AddPartyToWaitingList.Name:<<malloc 1>>
TEST.VALUE:manager.Manager::AddPartyToWaitingList.Name[0]:16#0#
TEST.END

-- Subprogram: Manager::ClearTable

-- Test Case: ATG-TEST-1
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::ClearTable
TEST.NEW
TEST.NAME:ATG-TEST-1
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
       #  (Data).DeleteRecord(Table)
   Test Case Generation Notes:

TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::ClearTable.Table:0
TEST.END

-- Subprogram: Manager::GetCheckTotal

-- Test Case: ATG-TEST-1
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::GetCheckTotal
TEST.NEW
TEST.NAME:ATG-TEST-1
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
       #  (Data).DeleteTableRecord(&TableData)
       #  (Data).GetTableRecord(Table, &TableData)
       #  return TableData.CheckTotal
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.VALUE:<<OPTIONS>>.SHOW_ONLY_DATA_WITH_EXPECTED_RESULTS:TRUE
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::GetCheckTotal.Table:0
TEST.END

-- Subprogram: Manager::GetNextPartyToBeSeated

-- Test Case: ATG-TEST-1
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::GetNextPartyToBeSeated
TEST.NEW
TEST.NAME:ATG-TEST-1
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (WaitingListIndex > (9)) ==> FALSE
       #  return WaitingList[(WaitingListIndex)++]
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.WaitingListIndex:9
TEST.END

-- Test Case: ATG-TEST-2
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::GetNextPartyToBeSeated
TEST.NEW
TEST.NAME:ATG-TEST-2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (WaitingListIndex > (9)) ==> TRUE
       #  WaitingListIndex := 0
       #  return WaitingList[(WaitingListIndex)++]
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.WaitingListIndex:131081
TEST.END

-- Subprogram: Manager::Manager

-- Test Case: ATG-TEST-1
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::Manager
TEST.NEW
TEST.NAME:ATG-TEST-1
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
       #  DataBase::DataBase()
       #  WaitingListSize := 0
       #  WaitingListIndex := 0
   Test Case Generation Notes:
      We didn't set any values -- maybe we have no visibility/static variable?
TEST.END_NOTES:
TEST.END

-- Subprogram: Manager::PlaceOrder

-- Test Case: ATG-TEST-1
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:ATG-TEST-1
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
       #  (Data).DeleteTableRecord(&TableData)
       #  (Data).GetTableRecord(Table, &TableData)
       #  TableData.IsOccupied := true
       #  (TableData.NumberInParty)++
       #  TableData.Order[Seat] := Order
       #  this->AddIncludedDessert(&(TableData.Order[Seat]))
      (1) case (Order.Entree) ==> Steak 1
       #  TableData.CheckTotal += 14
       #  (Data).UpdateTableRecord(Table, &TableData)
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.STUB:manager.Manager::AddIncludedDessert
TEST.VALUE:<<OPTIONS>>.SHOW_ONLY_DATA_WITH_EXPECTED_RESULTS:TRUE
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Entree:4383
TEST.VALUE:manager.Manager::PlaceOrder.Table:0
TEST.VALUE:manager.Manager::PlaceOrder.Seat:2
TEST.VALUE:manager.Manager::PlaceOrder.Order.Entree:Steak
TEST.END

-- Test Case: ATG-TEST-2
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:ATG-TEST-2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
       #  (Data).DeleteTableRecord(&TableData)
       #  (Data).GetTableRecord(Table, &TableData)
       #  TableData.IsOccupied := true
       #  (TableData.NumberInParty)++
       #  TableData.Order[Seat] := Order
       #  this->AddIncludedDessert(&(TableData.Order[Seat]))
      (2) case (Order.Entree) ==> Chicken 2
       #  TableData.CheckTotal += 10
       #  (Data).UpdateTableRecord(Table, &TableData)
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.STUB:manager.Manager::AddIncludedDessert
TEST.VALUE:<<OPTIONS>>.SHOW_ONLY_DATA_WITH_EXPECTED_RESULTS:TRUE
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Entree:4383
TEST.VALUE:manager.Manager::PlaceOrder.Table:0
TEST.VALUE:manager.Manager::PlaceOrder.Seat:2
TEST.VALUE:manager.Manager::PlaceOrder.Order.Entree:Chicken
TEST.END

-- Test Case: ATG-TEST-3
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:ATG-TEST-3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
       #  (Data).DeleteTableRecord(&TableData)
       #  (Data).GetTableRecord(Table, &TableData)
       #  TableData.IsOccupied := true
       #  (TableData.NumberInParty)++
       #  TableData.Order[Seat] := Order
       #  this->AddIncludedDessert(&(TableData.Order[Seat]))
      (3) case (Order.Entree) ==> Lobster 3
       #  TableData.CheckTotal += 18
       #  (Data).UpdateTableRecord(Table, &TableData)
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.STUB:manager.Manager::AddIncludedDessert
TEST.VALUE:<<OPTIONS>>.SHOW_ONLY_DATA_WITH_EXPECTED_RESULTS:TRUE
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Entree:4383
TEST.VALUE:manager.Manager::PlaceOrder.Table:0
TEST.VALUE:manager.Manager::PlaceOrder.Seat:2
TEST.VALUE:manager.Manager::PlaceOrder.Order.Entree:Lobster
TEST.END

-- Test Case: ATG-TEST-4
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:ATG-TEST-4
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
       #  (Data).DeleteTableRecord(&TableData)
       #  (Data).GetTableRecord(Table, &TableData)
       #  TableData.IsOccupied := true
       #  (TableData.NumberInParty)++
       #  TableData.Order[Seat] := Order
       #  this->AddIncludedDessert(&(TableData.Order[Seat]))
      (4) case (Order.Entree) ==> Pasta 4
       #  TableData.CheckTotal += 12
       #  (Data).UpdateTableRecord(Table, &TableData)
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.STUB:manager.Manager::AddIncludedDessert
TEST.VALUE:<<OPTIONS>>.SHOW_ONLY_DATA_WITH_EXPECTED_RESULTS:TRUE
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Entree:4383
TEST.VALUE:manager.Manager::PlaceOrder.Table:0
TEST.VALUE:manager.Manager::PlaceOrder.Seat:2
TEST.VALUE:manager.Manager::PlaceOrder.Order.Entree:Pasta
TEST.END

-- Test Case: ATG-TEST-5
TEST.UNIT:manager
TEST.SUBPROGRAM:Manager::PlaceOrder
TEST.NEW
TEST.NAME:ATG-TEST-5
TEST.NOTES:
This is an automatically generated test case.
   Test Path 5
       #  (Data).DeleteTableRecord(&TableData)
       #  (Data).GetTableRecord(Table, &TableData)
       #  TableData.IsOccupied := true
       #  (TableData.NumberInParty)++
       #  TableData.Order[Seat] := Order
       #  this->AddIncludedDessert(&(TableData.Order[Seat]))
      (5) case (Order.Entree) ==> default -1
       #  (Data).UpdateTableRecord(Table, &TableData)
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.STUB:manager.Manager::AddIncludedDessert
TEST.VALUE:<<OPTIONS>>.SHOW_ONLY_DATA_WITH_EXPECTED_RESULTS:TRUE
TEST.VALUE:manager.<<GLOBAL>>.(cl).Manager.Manager.<<constructor>>.Manager().<<call>>:0
TEST.VALUE:manager.Manager::AddIncludedDessert.Order[0].Entree:4382
TEST.VALUE:manager.Manager::PlaceOrder.Table:0
TEST.VALUE:manager.Manager::PlaceOrder.Seat:3
TEST.VALUE:manager.Manager::PlaceOrder.Order.Entree:65536
TEST.END

-- Subprogram: coded_tests_driver

-- Test Case: tutorial_coded_test
TEST.UNIT:manager
TEST.SUBPROGRAM:coded_tests_driver
TEST.NEW
TEST.NAME:tutorial_coded_test
TEST.CODED_TESTS_FILE:$(VCAST_DEMO_SRC_BASE)/coded_test/tutorial_coded_test.cpp
TEST.END
