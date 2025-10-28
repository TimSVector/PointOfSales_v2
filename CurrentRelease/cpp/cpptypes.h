#ifndef _TUTORIAL_TYPES_H_
#define _TUTORIAL_TYPES_H_

#include <array>
#include <string>
#include <cstdint>
#include <cstring>  // for memset

// ============================================================================
//  Basic Enums (strongly typed)
// ============================================================================
enum class Boolean   : uint8_t { False, True };
enum class Soup      : uint8_t { NoSoup, Onion, Chowder };
enum class Salad     : uint8_t { NoSalad, Caesar, Green };
enum class Entree    : uint8_t { NoEntree, Steak, Chicken, Lobster, Pasta };
enum class Dessert   : uint8_t { NoDessert, Cake, Pie, Fruit };
enum class Beverage  : uint8_t { NoBeverage, Wine, Beer, MixedDrink, Soda };

// ============================================================================
//  Float/No-Float Toggle
// ============================================================================
#ifdef VCAST_NO_FLOAT
using FLOAT = int;
#else
using FLOAT = float;
#endif

// ============================================================================
//  Constants
// ============================================================================
constexpr FLOAT COST_OF_STEAK   = 14;
constexpr FLOAT COST_OF_CHICKEN = 10;
constexpr FLOAT COST_OF_LOBSTER = 18;
constexpr FLOAT COST_OF_PASTA   = 12;

constexpr size_t NUM_TABLES = 6;
constexpr size_t SEATS_AT_ONE_TABLE = 4;

// ============================================================================
//  Core Typedefs
// ============================================================================
using seat_index_type  = uint16_t;
using table_index_type = uint16_t;

// ============================================================================
//  Order and Table Data Structures
// ============================================================================
struct Order {
    Soup      soup{Soup::NoSoup};
    Salad     salad{Salad::NoSalad};
    Entree    entree{Entree::NoEntree};
    Dessert   dessert{Dessert::NoDessert};
    Beverage  beverage{Beverage::NoBeverage};
};

// ---------------------------------------------------------------------------
// Each table holds up to SEATS_AT_ONE_TABLE orders
// ---------------------------------------------------------------------------
struct TableData {
    Boolean isOccupied{Boolean::False};
    Boolean isBillPaid{Boolean::False};
    seat_index_type numberInParty{0};
    char designator{'\0'};
    std::string waitPerson;
    std::array<Order, SEATS_AT_ONE_TABLE> orders{};
    FLOAT checkTotal{0};

    void clear() {
        isOccupied   = Boolean::False;
        isBillPaid   = Boolean::False;
        numberInParty = 0;
        designator   = '\0';
        waitPerson.clear();
        for (auto &o : orders) o = {};
        checkTotal = static_cast<FLOAT>(0);
    }
};

// ============================================================================
//  Legacy-Compatible Wrappers (for C-style API use)
// ============================================================================

// Provide aliases so existing database code still compiles cleanly
using data_type = TableData;

// Optional: C-style wrapper that directly holds a `data_type`
// (mainly useful for integration tests or when mirroring old structures)
struct TableRecord {
    data_type data;

    void clear() { std::memset(&data, 0, sizeof(data)); }

#ifndef VCAST_NO_FLOAT
    float total() const { return data.checkTotal; }
    void setTotal(float f) { data.checkTotal = f; }
#else
    int32_t total() const { return data.checkTotal; }
    void setTotal(int32_t i) { data.checkTotal = i; }
#endif
};

#endif // _TUTORIAL_TYPES_H_
