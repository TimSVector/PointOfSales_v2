#pragma once
#include "cpptypes.h"
#include <string>
#include <type_traits>

// ---------------------------------------------------------------------------
// Legacy type name compatibility layer for Manager.cpp
// ---------------------------------------------------------------------------

// --- Enum aliases (unscoped constants for old-style code) ---
constexpr auto Steak       = Entree::Steak;
constexpr auto Chicken     = Entree::Chicken;
constexpr auto Lobster     = Entree::Lobster;
constexpr auto Pasta       = Entree::Pasta;

constexpr auto Caesar      = Salad::Caesar;
constexpr auto Green       = Salad::Green;

constexpr auto Onion       = Soup::Onion;
constexpr auto Chowder     = Soup::Chowder;

constexpr auto Cake        = Dessert::Cake;
constexpr auto Pie         = Dessert::Pie;
constexpr auto Fruit       = Dessert::Fruit;

constexpr auto Wine        = Beverage::Wine;
constexpr auto Beer        = Beverage::Beer;
constexpr auto MixedDrink  = Beverage::MixedDrink;
constexpr auto Soda        = Beverage::Soda;

constexpr auto v_false = Boolean::False;
constexpr auto v_true  = Boolean::True;

// ---------------------------------------------------------------------------
// Shim structures to restore legacy field names (.Entree, .Salad, .CheckTotal)
// ---------------------------------------------------------------------------

struct OrderShim : public Order {
    using Order::Order;
    Entree&   Entree   = this->entree;
    Salad&    Salad    = this->salad;
    Soup&     Soup     = this->soup;
    Dessert&  Dessert  = this->dessert;
    Beverage& Beverage = this->beverage;
};

struct TableShim : public TableData {
    using TableData::TableData;
    Boolean&  IsOccupied     = this->isOccupied;
    Boolean&  IsBillPaid     = this->isBillPaid;
    decltype(numberInParty)& NumberInParty = this->numberInParty;
    decltype(designator)&    Designator    = this->designator;
    decltype(waitPerson)&    Wait_Person   = this->waitPerson;
    decltype(orders)&        Order         = this->orders;
    decltype(checkTotal)&    CheckTotal    = this->checkTotal; // alias
};

// ---------------------------------------------------------------------------
// Legacy type aliases used by Manager.cpp
// ---------------------------------------------------------------------------
using OrderType     = OrderShim;
using TableDataType = TableShim;
using name_type     = std::string;

// ---------------------------------------------------------------------------
// Automatic conversion helpers (no macros required!)
// ---------------------------------------------------------------------------

// Allow passing Order* to functions expecting OrderType* automatically.
inline OrderType* promote_order(Order* o) noexcept {
    // same memory layout — safe reinterpret_cast
    return reinterpret_cast<OrderType*>(o);
}

// Template trick: if a function expects OrderType* but gets Order*, redirect it
template<typename F, typename Ptr>
inline auto call_with_promoted(F&& func, Ptr* p)
    -> std::enable_if_t<std::is_same_v<Ptr, Order>, decltype(func(promote_order(p)))>
{
    return func(promote_order(p));
}

// Convenience overload that returns a char* from a std::string (WaitingList case)
inline char* legacy_c_str(std::string& s) noexcept {
    return s.empty() ? nullptr : s.data();
}
