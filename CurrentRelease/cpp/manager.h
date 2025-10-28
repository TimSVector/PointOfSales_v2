#ifndef _MANAGER_
#define _MANAGER_

#include "cpptypes.h"
#include "database.h"
#include "database_shim.h"
#include "manager_types_shim.h"

class Manager
{
public:
   Manager();
   void AddIncludedDessert(OrderType* Order);
   void PlaceOrder(unsigned int Table, unsigned int Seat, OrderType Order);
   void ClearTable(unsigned int Table);
   int GetCheckTotal(unsigned int Table);
   int MemberVariable;

   void AddPartyToWaitingList(char* Name);
   char* GetNextPartyToBeSeated(void);


private:
   DatabaseShim Data;

//   DataBase Data;
   name_type WaitingList[10]; 
   unsigned int WaitingListSize;
   unsigned int WaitingListIndex;

};

#endif
