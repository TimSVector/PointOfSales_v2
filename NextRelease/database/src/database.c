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
 *      - struct table_data_type Get_Record(table_index_type Table)              *
 *      - void Update_Record(table_index_type Table,                             *
 *           struct table_data_type Data)                                              *
 *      - void Remove_Record(table_index_type Table)                             *
 *                                                                                     *
 *                                                                                     *
 * Private API:                                                                        *
 *      - None                                                                         *
 *                                                                                     *
 ***************************************************************************************/

/***************************************************************************************
 *                             Program Headers                                         *
 ***************************************************************************************/


#include "ctypes.h"
#include "linked_list.h"
#include "database.h"

/***************************************************************************************
 *                             Local Defines                                           *
 ***************************************************************************************/


/**************************************************************************************
 *  Subprogram: Get_Record                                                            *
 *                                                                                    * 
 *  Purpose: Sets the unit private variable CurrentColor                              *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - Table - int                                                   *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - struct data_type                                                     *
 *                                                                                    * 
 **************************************************************************************/

data_type Get_Record(int Table)
{
  // setup the local variables 
  struct DataItem * dPtr;
  struct DataItem dataItem = BLANK_DATA_ITEM;

  // set the search key (table) in the data items
  dataItem.table = Table;

  // seatch for the data item
  // if the items was NOT found...
  if ((dPtr = findData(dataItem)) == NULL)
  {
    // Insert the item into the list 
    InsertDataItem(&dataItem);
    
    // set the data pointer to the current data items
    dPtr = &dataItem;
  }

  // return the table data from the data pointer
  return (dPtr->Data);
}

/**************************************************************************************
 *  Subprogram: Update_Record                                                   *
 *                                                                                    * 
 *  Purpose: Updates the current table record with input information                  *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - Table - int                                                   *
 *       - Data - struct data_type                                              *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - None                                                                       *
 *                                                                                    * 
 **************************************************************************************/
void Update_Record(int Table, data_type Data)
{
  // setup the local variables
  struct DataItem dataItem = BLANK_DATA_ITEM;
  struct DataItem * entry;

  // set the search key (table) in the data items
  dataItem.table = Table;

  // seatch for the data item
  // if the items was found...
  if ((entry = findData(dataItem)) != NULL)
  {
    // set the data
    entry->Data = Data;
  }
}

/**************************************************************************************
 *  Subprogram: Remove_Record                                                   *
 *                                                                                    * 
 *  Purpose: Removes the record from the database                                     *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - Val - enum COLOR - Color input                                             *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - None                                                                       *
 *                                                                                    * 
 **************************************************************************************/
void Remove_Record(int Table)
{
  // setup local variables
  struct DataItem dataItem;
    
  // set the search key (table) in the data items
  dataItem.table = Table;

  // remove the item from the linked list
  RemoveDataItem(&dataItem);
}


