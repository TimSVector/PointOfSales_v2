#pragma once
#include <cstdint>
#include "cpptypes.h"

// ---------------------------------------------------------------------------
//  Blank initialization values (consistent with cpptypes.h)
// ---------------------------------------------------------------------------

static const Order BLANK_ORDER = {
    Soup::NoSoup, Salad::NoSalad, Entree::NoEntree, Dessert::NoDessert, Beverage::NoBeverage
};

static const data_type BLANK_TABLE = {
    Boolean::False,   // isOccupied
    Boolean::False,   // isBillPaid
    0,                // numberInParty
    '\0',             // designator
    "",               // waitPerson
    { BLANK_ORDER, BLANK_ORDER, BLANK_ORDER, BLANK_ORDER },
    static_cast<FLOAT>(0)  // checkTotal
};

// ---------------------------------------------------------------------------
//  C-compatible database API
// ---------------------------------------------------------------------------
#ifdef __cplusplus
extern "C" {
#endif

// Core table API
void        Initialize_Database(void);
data_type   Get_Record(table_index_type table);
void        Update_Record(table_index_type table, data_type data);
void        Remove_Record(table_index_type table);
void        Clear_Table(table_index_type table);

// Seat-level management
bool        Reserve_Seat(table_index_type table, seat_index_type seat);
bool        Free_Seat(table_index_type table, seat_index_type seat);
bool        Is_Seat_Occupied(table_index_type table, seat_index_type seat);
uint32_t    Get_Open_Seats(table_index_type table);

// Table-level management
int32_t     Get_Open_Table(void);
void        Print_Table_Status(void);

#ifdef __cplusplus
}
#endif
