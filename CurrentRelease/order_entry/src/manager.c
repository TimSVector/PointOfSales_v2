/***************************************************************************************
 *             _______ _______________________ _______                                 *
 *    |\     /(  ____ (  ____ \__   __(  ___  (  ____ )                                *
 *    | )   ( | (    \| (    \/  ) (  | (   ) | (    )|                                *
 *    | |   | | (__   | |        | |  | |   | | (____)|                                *
 *    ( (   ) |  __)  | |        | |  | |   | |     __)                                *
 *     \ \_/ /| (     | |        | |  | |   | | (\ (                                   *
 *      \   / | (____/| (____/\  | |  | (___) | ) \ \__                                *
 *       \_/  (_______(_______/  )_(  (_______|/   \__/                                *
 *                                                                                     *
 *                 _______ _______ ________________        _______ _______ _______     *
 *                (  ____ (  ___  (  ____ \__   __|\     /(  ___  (  ____ (  ____ \    *
 *                | (    \| (   ) | (    \/  ) (  | )   ( | (   ) | (    )| (    \/    *
 *                | (_____| |   | | (__      | |  | | _ | | (___) | (____)| (__        *
 *                (_____  | |   | |  __)     | |  | |( )| |  ___  |     __|  __)       *
 *                      ) | |   | | (        | |  | || || | (   ) | (\ (  | (          *
 *                /\____) | (___) | )        | |  | () () | )   ( | ) \ \_| (____/\    *
 *                \_______(_______|/         )_(  (_______|/     \|/   \__(_______/    *
 *                                                                                     *
 *                                                                                     *
 *   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   *
 *                                                                                     *
 *                              Vector Software (c) 2017                               *
 *                                                                                     *
 ***************************************************************************************/

/***************************************************************************************
 * Unit: manager.c                                                                     *
 *                                                                                     *
 * Purpose: Used as a demostration module for point of sales termainal                 *
 *                                                                                     *
 * Public API:                                                                         *
 *      - void Add_Included_Dessert(struct order_type* Order)                          *
 *      - int Place_Order(table_index_type Table,                                      *
 *              seat_index_type Seat,                                                  *
 *              struct order_type Order)                                               *
 *      - int Clear_Table(table_index_type Table)                                      *
 *      - float Get_Check_Total(table_index_type Table)                                *
 *      - int Pay_The_Bill(const char * name,                                          *
 *              const char cardNumber[16],                                             *
 *              const char secCode[3],                                                 *
 *              int Table)                                                             *
 *      - void Add_Party_To_Waiting_List(char* Name)                                   *
 *      - char* Get_Next_Party_To_Be_Seated(void)                                      *
 *                                                                                     *
 *                                                                                     *
 * Private API:                                                                        *
 *      - None                                        *                                *
 *                                                                                     *
 *                                                                                     *
 ***************************************************************************************/

/***************************************************************************************
 *                             System Headers                                          *
 ***************************************************************************************/

/***************************************************************************************
 *                             Program Headers                                         *
 ***************************************************************************************/

#include "ctypes.h"

/***************************************************************************************
 *                             External Prototypes                                     *
 ***************************************************************************************/

#include "database.h"
#include "encrypt.h"


/***************************************************************************************
 *                        Private local variables                                      *
 ***************************************************************************************/

/* Allow 10 Parties to wait */
static name_type WaitingList[10];
static unsigned int WaitingListSize = 0;
static unsigned int WaitingListIndex = 0;

/**************************************************************************************
 *  Subprogram: Add_Included_Dessert                                                  *
 *                                                                                    * 
 *  Purpose: Add a free dessert to specific orders based on the                       *
 *           entree, salad, and beverage choice                                       *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - Order - struct order_type*                                                 *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - None                                                                       *
 *                                                                                    * 
 **************************************************************************************/

void Add_Included_Dessert(struct order_type* Order)
{
  // Null pointer check
  if (Order == 0)   return;
  
  // if special steak order
  if(Order->Entree == STEAK &&
     Order->Salad == CAESAR &&
     Order->Beverage == MIXED_DRINK) 
  {
    Order->Dessert = PIE;
  } 
  
  // if special lobster order
  else if(Order->Entree == LOBSTER &&
            Order->Salad == GREEN &&
            Order->Beverage == WINE) 
  {  
    Order->Dessert = CAKE;  
  }
}

/**************************************************************************************
 *  Subprogram: Place_Order                                                           *
 *                                                                                    *
 *  Purpose: Updates the flags and check totals of the table/seat in the database     *
 *                                                                                    *
 *  Inputs:                                                                           *
 *       - Table - table_index_type - table number                                    *
 *       - Seat - seat_index_type - Seat number                                       *
 *       - Order - struct order_type - Order                                          *
 *                                                                                    *
 *  Outputs:                                                                          *
 *       - 0 - Pass                                                                   *
 *                                                                                    * 
 **************************************************************************************/

int Place_Order(table_index_type Table,
                seat_index_type Seat,
                struct order_type Order)
{
  // Local Table Data
  struct table_data_type Table_Data = Get_Record(Table);

  // Set the Table Data Flags
  Table_Data.Is_Occupied = v_true;
  Table_Data.Number_In_Party = Table_Data.Number_In_Party + 1;
  Table_Data.Is_Bill_Paid = v_false;

  // Add the order to the data structure
  Table_Data.Order[Seat] = Order;
  
  // Add a free dessert in some cases
  Add_Included_Dessert(&Table_Data.Order[Seat]);
 
  // Update the check total based on Entree Type
  switch(Order.Entree)
  {
    case NO_ENTREE : 
       break;
    case STEAK :
       Table_Data.Check_Total = Table_Data.Check_Total + COST_OF_STEAK;
       break;
    case CHICKEN :
       Table_Data.Check_Total = Table_Data.Check_Total + COST_OF_CHICKEN;
       break;
    case LOBSTER :
       Table_Data.Check_Total = Table_Data.Check_Total + COST_OF_LOBSTER;
       break;
    case PASTA :
       Table_Data.Check_Total = Table_Data.Check_Total + COST_OF_PASTA;
       break;
  }

  // add tax
  // Table_Data.Check_Total *= 1.10;

  // Updated the database with the new information
  Update_Record(Table, Table_Data);
  return 0;
}

/**************************************************************************************
 *  Subprogram: Clear_Table                                                           *
 *                                                                                    *
 *  Purpose: Clears the entry for the table/seat combination                          *
 *                                                                                    *
 *  Inputs:                                                                           *
 *       - Table - table_index_type - table number                                    *
 *                                                                                    *
 *  Outputs:                                                                          *
 *       - 0/-1 - Pass/Fail (bill not paid)                                           *
 *                                                                                    * 
 **************************************************************************************/
int Clear_Table(table_index_type Table)
{
  // Local Table Data
  struct table_data_type Table_Data = Get_Record(Table);

  // can't clear the table is the bill isn't paid
  if (!Table_Data.Is_Bill_Paid)
  {
    return -1;
  }

  // Remove the record from the database
  Remove_Record(Table);

  // return pass
  return 0;
}

/**************************************************************************************
 *  Subprogram: Get_Check_Total                                                       *
 *                                                                                    *
 *  Purpose: Returns the check total for the table/seat combination                   *
 *                                                                                    *
 *  Inputs:                                                                           *
 *       - Table - table_index_type - table number                                    *
 *                                                                                    *
 *  Outputs:                                                                          *
 *       - Check Total - float                                                        *
 *                                                                                    * 
 **************************************************************************************/
float Get_Check_Total(table_index_type Table)
{
  // return the check total for the table
  return (Get_Record(Table).Check_Total);
}

/**************************************************************************************
 *  Subprogram: Pay_The_Bill                                                          *
 *                                                                                    *
 *  Purpose: Pays the bill (CC only) for the Table                                    *
 *                                                                                    *
 *  Inputs:                                                                           *
 *       - name - const char * - name on the CC                                       *
 *       - cardNumber - const char[16] - number on the CC                             *
 *       - secCode - const char[3] - security code on the CC                          *
 *       - Table - table_index_type - table number                                    *
 *                                                                                    *
 *  Outputs:                                                                          *
 *       - 0/-1 - Pass/Fail (bill not paid)                                           *
 *                                                                                    * 
 **************************************************************************************/

int Pay_The_Bill(const char * name, const char cardNumber[16], const char secCode[3], int Table)
{
  // local table dat
  struct table_data_type Table_Data = Get_Record(Table);

  // make call to transmit the CC info
  if (transmit_Info(name,cardNumber,secCode,Table_Data.Check_Total) == 0)
  {
      // if trasmission was good - set the bill to paid 
	  Table_Data.Is_Bill_Paid = v_true;
      
      // Reset check total
	  Table_Data.Check_Total = 0;
      
      // Push the cleared record back into database
	  Update_Record(Table, Table_Data);

      // return PASSED
	  return 0;
  }

  // return FAILED
  return -1;
}

