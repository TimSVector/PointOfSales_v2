#ifndef _TUTORIAL_TYPES_H_
#define _TUTORIAL_TYPES_H_ 

#define SEATS_AT_ONE_TABLE  4
#define NUMBER_OF_TABLES    6

#include <stdlib.h>

enum boolean   { v_false, v_true };
enum soups     { NO_SOUP, ONION, CHOWDER };
enum salads    { NO_SALAD, CAESAR, GREEN };
enum entrees   { NO_ENTREE, STEAK, CHICKEN, LOBSTER, PASTA };
enum desserts  { NO_DESSERT, CAKE, PIE, FRUIT };
enum beverages { NO_BEVERAGE, WINE, BEER, MIXED_DRINK, SODA };

#define COST_OF_STEAK   14
#define COST_OF_CHICKEN 10
#define COST_OF_LOBSTER 18
#define COST_OF_PASTA   12


struct order_type
{
  enum soups     Soup;
  enum salads    Salad;
  enum entrees   Entree;
  enum desserts  Dessert;
  enum beverages Beverage;
};

typedef unsigned short seat_index_type;
typedef unsigned short table_index_type;

struct table_data_type
{
  enum boolean      Is_Occupied;
  enum boolean      Is_Bill_Paid;
  seat_index_type   Number_In_Party;
  char              Designator;
  char              Wait_Person[10];
  struct order_type Order[SEATS_AT_ONE_TABLE];
  float             Check_Total;
};

typedef struct table_data_type data_type;

typedef char name_type[32];

#define BLANK_ORDER {NO_SOUP,NO_SALAD,NO_ENTREE,NO_DESSERT,NO_BEVERAGE}
#define BLANK_DATA_ITEM {0,  {v_false,v_false,0,0,"", {BLANK_ORDER, BLANK_ORDER, BLANK_ORDER, BLANK_ORDER},  0.0}}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#endif /* _TUTORIAL_TYPES_H_ */
