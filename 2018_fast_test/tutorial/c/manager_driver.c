#include <stdio.h>
#include <string.h>
#include "ctypes.h"

extern int Place_Order(table_index_type Table,
                       seat_index_type Seat,
                       struct order_type Order);

extern int Clear_Table(table_index_type Table);

extern FLOAT Get_Check_Total(table_index_type Table);

extern void Add_Included_Dessert(struct order_type* Order);

int main(int argc, const char *argv[])
{
  struct order_type order;
  int Total;

  switch (argv[1][0])
  {
    case 'p': case 'P':
      order.Entree = STEAK;
      Place_Order(1, 1, order);
      break;
    case 'g': case 'G':
      order.Entree = CHICKEN;
      Place_Order(2, 2, order);
      Total = (int)Get_Check_Total(2);
      printf("The Total is %d\n", Total);
      break;
    case 'c': case 'C':
      Clear_Table(1);
      break;
    case 'a': case 'A':
      order.Entree = STEAK;
      order.Salad = CAESAR;
      order.Beverage = MIXED_DRINK;
      Add_Included_Dessert(&order);
      break;
  }

  return 0;
}
