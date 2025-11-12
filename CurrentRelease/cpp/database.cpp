#include "database.h"
#include <vector>
#include <algorithm>
#include <cstdio>

// --- Global storage ---
static std::vector<data_type> gTables;



// ---------------------------------------------------------------------------
// Initialization and stuff
// ---------------------------------------------------------------------------

extern "C" void Initialize_Database(void)
{
    gTables.assign(NUM_TABLES, BLANK_TABLE);
}

extern "C" data_type Get_Record(table_index_type table)
{
    if (table >= gTables.size())
        return BLANK_TABLE;
    return gTables[table];
}

extern "C" void Update_Record(table_index_type table, data_type data)
{
    if (table >= gTables.size()) return;
    gTables[table] = data;
}

extern "C" void Remove_Record(table_index_type table)
{
    if (table >= gTables.size()) return;
    gTables[table] = BLANK_TABLE;
}

extern "C" void Clear_Table(table_index_type table)
{
    if (table >= gTables.size()) return;
    gTables[table] = BLANK_TABLE;
}

// ---------------------------------------------------------------------------
// Seat management (structural only - no business logic)
// ---------------------------------------------------------------------------

extern "C" bool Reserve_Seat(table_index_type table, seat_index_type seat)
{
    if (table >= gTables.size() || seat >= SEATS_AT_ONE_TABLE)
        return false;

    data_type &tbl = gTables[table];
    if (tbl.isOccupied == Boolean::False)
        tbl.isOccupied = Boolean::True;

    if (tbl.numberInParty >= SEATS_AT_ONE_TABLE)
        return false;  // full

    tbl.numberInParty++;
    return true;
}

extern "C" bool Free_Seat(table_index_type table, seat_index_type seat)
{
    if (table >= gTables.size() || seat >= SEATS_AT_ONE_TABLE)
        return false;

    data_type &tbl = gTables[table];
    if (tbl.numberInParty == 0)
        return false;

    tbl.numberInParty--;
    if (tbl.numberInParty == 0)
        tbl.isOccupied = Boolean::False;
    return true;
}

extern "C" bool Is_Seat_Occupied(table_index_type table, seat_index_type seat)
{
    if (table >= gTables.size() || seat >= SEATS_AT_ONE_TABLE)
        return false;

    const data_type &tbl = gTables[table];
    return (tbl.isOccupied == Boolean::True && seat < tbl.numberInParty);
}

extern "C" uint32_t Get_Open_Seats(table_index_type table)
{
    if (table >= gTables.size())
        return 0;

    const data_type &tbl = gTables[table];
    return SEATS_AT_ONE_TABLE - tbl.numberInParty;
}

// ---------------------------------------------------------------------------
// Table management helpers
// ---------------------------------------------------------------------------

extern "C" int32_t Get_Open_Table(void)
{
    for (uint32_t i = 0; i < gTables.size(); ++i)
        if (Get_Open_Seats(i) > 0)
            return static_cast<int32_t>(i);
    return -1;
}

extern "C" void Print_Table_Status(void)
{
    printf("\n=== TABLE STATUS ===\n");
    for (size_t t = 0; t < gTables.size(); ++t)
    {
        const data_type &tbl = gTables[t];
        printf("Table %zu: ", t);

        if (tbl.isOccupied == Boolean::False)
        {
            printf("[empty]\n");
            continue;
        }

        printf("%u seated, BillPaid=%d, Total=$%.2f\n",
               tbl.numberInParty,
               tbl.isBillPaid,
               tbl.checkTotal);
    }
}
