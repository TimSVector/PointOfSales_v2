-- VectorCAST 18.sp1 (03/13/18)
-- Test Case Script
-- 
-- Environment    : ENV_LINKED_LIST
-- Unit(s) Under Test: linked_list
-- 
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
--

-- Unit: linked_list

-- Subprogram: InsertDataItem

-- Test Case: BASIS-PATH-001-PARTIAL
TEST.UNIT:linked_list
TEST.SUBPROGRAM:InsertDataItem
TEST.NEW
TEST.NAME:BASIS-PATH-001-PARTIAL
TEST.BASIS_PATH:1 of 3 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (nodeData == (void *)0) ==> TRUE
   Test Case Generation Notes:
      Cannot set local variable nodeData in branch 1
TEST.END_NOTES:
TEST.VALUE:linked_list.InsertDataItem.Data:<<malloc 1>>
TEST.END

-- Test Case: BASIS-PATH-002-PARTIAL
TEST.UNIT:linked_list
TEST.SUBPROGRAM:InsertDataItem
TEST.NEW
TEST.NAME:BASIS-PATH-002-PARTIAL
TEST.BASIS_PATH:2 of 3 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (nodeData == (void *)0) ==> FALSE
      (2) if (linkedList == (void *)0) ==> TRUE
   Test Case Generation Notes:
      Cannot set local variable nodeData in branch 1
      Cannot set local variable nodeData in branch 2
TEST.END_NOTES:
TEST.VALUE:linked_list.<<GLOBAL>>.linkedList:<<null>>
TEST.VALUE:linked_list.InsertDataItem.Data:<<malloc 1>>
TEST.END

-- Test Case: BASIS-PATH-003-PARTIAL
TEST.UNIT:linked_list
TEST.SUBPROGRAM:InsertDataItem
TEST.NEW
TEST.NAME:BASIS-PATH-003-PARTIAL
TEST.BASIS_PATH:3 of 3 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if (nodeData == (void *)0) ==> FALSE
      (2) if (linkedList == (void *)0) ==> FALSE
   Test Case Generation Notes:
      Cannot set local variable nodeData in branch 1
      Cannot set local variable nodeData in branch 2
      Cannot set local variable nodeData in branch 3
TEST.END_NOTES:
TEST.VALUE:linked_list.<<GLOBAL>>.linkedList:<<malloc 1>>
TEST.VALUE:linked_list.<<GLOBAL>>.linkedListEnd:<<malloc 1>>
TEST.VALUE:linked_list.InsertDataItem.Data:<<malloc 1>>
TEST.END

-- Subprogram: RemoveAllDataItems

-- Test Case: BASIS-PATH-001
TEST.UNIT:linked_list
TEST.SUBPROGRAM:RemoveAllDataItems
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) while (linkedList != (void *)0) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:linked_list.<<GLOBAL>>.linkedList:<<null>>
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:linked_list
TEST.SUBPROGRAM:RemoveAllDataItems
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) while (linkedList != (void *)0) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:linked_list.<<GLOBAL>>.linkedList:<<malloc 1>>
TEST.END

-- Subprogram: RemoveDataItem

-- Test Case: BASIS-PATH-001
TEST.UNIT:linked_list
TEST.SUBPROGRAM:RemoveDataItem
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 6
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (foundNode == (void *)0) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.STUB:linked_list.findDataNode
TEST.VALUE:linked_list.findDataNode.return:<<null>>
TEST.VALUE:linked_list.RemoveDataItem.Data:<<malloc 1>>
TEST.END

-- Test Case: BASIS-PATH-002-PARTIAL
TEST.UNIT:linked_list
TEST.SUBPROGRAM:RemoveDataItem
TEST.NEW
TEST.NAME:BASIS-PATH-002-PARTIAL
TEST.BASIS_PATH:2 of 6 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (foundNode == (void *)0) ==> FALSE
      (2) if (foundNode->next == (void *)0) ==> FALSE
      (3) if (foundNode->previous == (void *)0) ==> FALSE
      (4) if (previousNode != (void *)0) ==> FALSE
      (5) if (nextNode != (void *)0) ==> FALSE
   Test Case Generation Notes:
      Conflict: Trying to set variable linked_list.findDataNode.return.previous 'equal to' and 'not equal to' same value in branches 3/4
      Conflict: Trying to set variable linked_list.findDataNode.return.next 'equal to' and 'not equal to' same value in branches 2/5
TEST.END_NOTES:
TEST.STUB:linked_list.findDataNode
TEST.VALUE:linked_list.findDataNode.return:<<malloc 1>>
TEST.VALUE:linked_list.findDataNode.return[0].next:<<malloc 1>>
TEST.VALUE:linked_list.findDataNode.return[0].previous:<<malloc 1>>
TEST.VALUE:linked_list.RemoveDataItem.Data:<<malloc 1>>
TEST.END

-- Test Case: BASIS-PATH-003-PARTIAL
TEST.UNIT:linked_list
TEST.SUBPROGRAM:RemoveDataItem
TEST.NEW
TEST.NAME:BASIS-PATH-003-PARTIAL
TEST.BASIS_PATH:3 of 6 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if (foundNode == (void *)0) ==> FALSE
      (2) if (foundNode->next == (void *)0) ==> FALSE
      (3) if (foundNode->previous == (void *)0) ==> FALSE
      (4) if (previousNode != (void *)0) ==> FALSE
      (5) if (nextNode != (void *)0) ==> TRUE
   Test Case Generation Notes:
      Conflict: Trying to set variable linked_list.findDataNode.return.previous 'equal to' and 'not equal to' same value in branches 3/4
TEST.END_NOTES:
TEST.STUB:linked_list.findDataNode
TEST.VALUE:linked_list.findDataNode.return:<<malloc 1>>
TEST.VALUE:linked_list.findDataNode.return[0].next:<<malloc 1>>
TEST.VALUE:linked_list.findDataNode.return[0].previous:<<malloc 1>>
TEST.VALUE:linked_list.RemoveDataItem.Data:<<malloc 1>>
TEST.END

-- Test Case: BASIS-PATH-004-PARTIAL
TEST.UNIT:linked_list
TEST.SUBPROGRAM:RemoveDataItem
TEST.NEW
TEST.NAME:BASIS-PATH-004-PARTIAL
TEST.BASIS_PATH:4 of 6 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
      (1) if (foundNode == (void *)0) ==> FALSE
      (2) if (foundNode->next == (void *)0) ==> FALSE
      (3) if (foundNode->previous == (void *)0) ==> FALSE
      (4) if (previousNode != (void *)0) ==> TRUE
      (5) if (nextNode != (void *)0) ==> FALSE
   Test Case Generation Notes:
      Conflict: Trying to set variable linked_list.findDataNode.return.next 'equal to' and 'not equal to' same value in branches 2/5
TEST.END_NOTES:
TEST.STUB:linked_list.findDataNode
TEST.VALUE:linked_list.findDataNode.return:<<malloc 1>>
TEST.VALUE:linked_list.findDataNode.return[0].next:<<malloc 1>>
TEST.VALUE:linked_list.findDataNode.return[0].previous:<<malloc 1>>
TEST.VALUE:linked_list.RemoveDataItem.Data:<<malloc 1>>
TEST.END

-- Test Case: BASIS-PATH-005-PARTIAL
TEST.UNIT:linked_list
TEST.SUBPROGRAM:RemoveDataItem
TEST.NEW
TEST.NAME:BASIS-PATH-005-PARTIAL
TEST.BASIS_PATH:5 of 6 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 5
      (1) if (foundNode == (void *)0) ==> FALSE
      (2) if (foundNode->next == (void *)0) ==> FALSE
      (3) if (foundNode->previous == (void *)0) ==> TRUE
      (4) if (previousNode != (void *)0) ==> FALSE
      (5) if (nextNode != (void *)0) ==> FALSE
   Test Case Generation Notes:
      Conflict: Trying to set variable linked_list.findDataNode.return.next 'equal to' and 'not equal to' same value in branches 2/5
      Conflict: Trying to set variable linked_list.findDataNode.return.previous 'equal to' and 'not equal to' same value in branches 3/5
TEST.END_NOTES:
TEST.STUB:linked_list.findDataNode
TEST.VALUE:linked_list.findDataNode.return:<<malloc 1>>
TEST.VALUE:linked_list.findDataNode.return[0].next:<<malloc 1>>
TEST.VALUE:linked_list.findDataNode.return[0].previous:<<null>>
TEST.VALUE:linked_list.RemoveDataItem.Data:<<malloc 1>>
TEST.END

-- Test Case: BASIS-PATH-006-PARTIAL
TEST.UNIT:linked_list
TEST.SUBPROGRAM:RemoveDataItem
TEST.NEW
TEST.NAME:BASIS-PATH-006-PARTIAL
TEST.BASIS_PATH:6 of 6 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 6
      (1) if (foundNode == (void *)0) ==> FALSE
      (2) if (foundNode->next == (void *)0) ==> TRUE
      (3) if (foundNode->previous == (void *)0) ==> FALSE
      (4) if (previousNode != (void *)0) ==> FALSE
      (5) if (nextNode != (void *)0) ==> FALSE
   Test Case Generation Notes:
      Conflict: Trying to set variable linked_list.findDataNode.return.previous 'equal to' and 'not equal to' same value in branches 3/4
TEST.END_NOTES:
TEST.STUB:linked_list.findDataNode
TEST.VALUE:linked_list.findDataNode.return:<<malloc 1>>
TEST.VALUE:linked_list.findDataNode.return[0].next:<<null>>
TEST.VALUE:linked_list.findDataNode.return[0].previous:<<malloc 1>>
TEST.VALUE:linked_list.RemoveDataItem.Data:<<malloc 1>>
TEST.END

-- Subprogram: destroyLinkedList

-- Test Case: BASIS-PATH-001
TEST.UNIT:linked_list
TEST.SUBPROGRAM:destroyLinkedList
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.END

-- Subprogram: findData

-- Test Case: BASIS-PATH-001
TEST.UNIT:linked_list
TEST.SUBPROGRAM:findData
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (foundNode == (void *)0) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.STUB:linked_list.findDataNode
TEST.VALUE:linked_list.findDataNode.return:<<null>>
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:linked_list
TEST.SUBPROGRAM:findData
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (foundNode == (void *)0) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.STUB:linked_list.findDataNode
TEST.VALUE:linked_list.findDataNode.return:<<malloc 1>>
TEST.END

-- Subprogram: findDataNode

-- Test Case: BASIS-PATH-001
TEST.UNIT:linked_list
TEST.SUBPROGRAM:findDataNode
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) while (searchNode != (void *)0) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:linked_list.<<GLOBAL>>.linkedList:<<null>>
TEST.VALUE:linked_list.findDataNode.Data:<<malloc 1>>
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:linked_list
TEST.SUBPROGRAM:findDataNode
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) while (searchNode != (void *)0) ==> TRUE
      (2) if (Data->table == (searchNode->Data).table) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:linked_list.<<GLOBAL>>.linkedList:<<malloc 1>>
TEST.VALUE:linked_list.<<GLOBAL>>.linkedList[0].Data.table:<<MIN>>
TEST.VALUE:linked_list.findDataNode.Data:<<malloc 1>>
TEST.VALUE:linked_list.findDataNode.Data[0].table:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-003
TEST.UNIT:linked_list
TEST.SUBPROGRAM:findDataNode
TEST.NEW
TEST.NAME:BASIS-PATH-003
TEST.BASIS_PATH:3 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) while (searchNode != (void *)0) ==> TRUE
      (2) if (Data->table == (searchNode->Data).table) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:linked_list.<<GLOBAL>>.linkedList:<<malloc 1>>
TEST.VALUE:linked_list.<<GLOBAL>>.linkedList[0].Data.table:-2147483647
TEST.VALUE:linked_list.findDataNode.Data:<<malloc 1>>
TEST.VALUE:linked_list.findDataNode.Data[0].table:<<MIN>>
TEST.END

-- Subprogram: getData

-- Test Case: BASIS-PATH-001
TEST.UNIT:linked_list
TEST.SUBPROGRAM:getData
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:linked_list.getData.table:<<MIN>>
TEST.END

-- Subprogram: initLinkList

-- Test Case: BASIS-PATH-001
TEST.UNIT:linked_list
TEST.SUBPROGRAM:initLinkList
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.END
