#pragma once
#include "cpptypes.h"
#include "database.h"

// This class acts as a compatibility layer between the legacy Manager code
// and the new C-style database API.
class DatabaseShim {
public:
    DatabaseShim() = default;

    // --- Legacy interface expected by Manager.cpp ---

    // Old: Data.GetTableRecord(Table, &TableData);
    void GetTableRecord(unsigned int table, TableData* tableData) {
        if (!tableData) return;
        *tableData = Get_Record(static_cast<table_index_type>(table));
    }

    // Old: Data.UpdateTableRecord(Table, &TableData);
    void UpdateTableRecord(unsigned int table, TableData* tableData) {
        if (!tableData) return;
        Update_Record(static_cast<table_index_type>(table), *tableData);
    }

    // Old: Data.DeleteRecord(Table);
    void DeleteRecord(unsigned int table) {
        Remove_Record(static_cast<table_index_type>(table));
    }

    // Old: Data.DeleteTableRecord(&TableData);
    // (appears to just clear local struct — no DB side effect)
    void DeleteTableRecord(TableData* tableData) {
        if (!tableData) return;
        tableData->clear();
    }
};
