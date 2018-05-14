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
 * Purpose: Used as a demonstration module for armament management system              *
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

/**************************************************************************************
 *  Subprogram: Add_Range                                                             *
 *                                                                                    * 
 *  Purpose: Adding range information depending on the armament selected              *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - armament - struct armament_type*                                           *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - None                                                                       *
 *                                                                                    * 
 **************************************************************************************/

void Add_Range(struct armament_type* armament)
{
  // Null pointer check
  if (armament  == 0)   return;
  
  if(armament->type == air2air &&
    (armament->armament_info.air2air == AIM_9_SIDEWINDER || armament->armament_info.air2air == AIM_7_SPARROW) )
  {
    armament->range |= RNG_MEDIUM;
  } 
  
  else if(armament->type == air2air && armament->armament_info.air2air == AIM_120_AMRAAM )
  {
    armament->range |= RNG_LONG;
  } 
  
  else if(armament->type == air2gnd && armament->armament_info.air2gnd != A2G_BRILLIANT_BOMB )
  {
    armament->range |= RNG_LONG;
  } 
  
  else if(armament->type == air2gnd && armament->armament_info.air2gnd == A2G_BRILLIANT_BOMB )
  {
    armament->range |= RNG_FIRE_FORGET;
  } 
  
}

/**************************************************************************************
 *  Subprogram: Add_Armament                                                          *
 *                                                                                    *
 *  Purpose: Updates the flags and weight totals of the armament in the database      *
 *                                                                                    *
 *  Inputs:                                                                           *
 *       - Aircraft_Index - int - Index of armament                                   *
 *       - Armament_Point - int - Point to place armament                             *
 *       - Armament - struct armament_type - Armament to be placed                    *
 *                                                                                    *
 *  Outputs:                                                                          *
 *       - SUCCESS/FAILURE                                                            *
 *                                                                                    * 
 **************************************************************************************/

int Add_Armament(int Aircraft_Index, int Armament_Point,
                struct armament_type Armament)
{
  // Local Table Data
  struct armament_load_data_type Load_Data = Get_Record(Aircraft_Index);

  if (Load_Data.Point_Filled[Armament_Point])
  {
      return FAILURE;
  }
  
  // Set the Table Data Flags
  Load_Data.Point_Filled[Armament_Point] = v_true;

  // Add the order to the data structure
  Load_Data.Armament[Armament_Point] = Armament;
  
  // Add a free dessert in some cases
  Add_Range(&Load_Data.Armament[Armament_Point]);
 
  // Update the check total based on Entree Type
  switch(Armament.type)
    {
    case air2air : 
       Load_Data.Weight = Load_Data.Weight + WEIGHT_OF_A2A;
       break;
    case air2gnd :
       Load_Data.Weight = Load_Data.Weight + WEIGHT_OF_A2G;
       break;
    case eleXmsr :
       Load_Data.Weight = Load_Data.Weight + WEIGHT_OF_ECM_POD;
       break;
    case podNavTgt :
       Load_Data.Weight = Load_Data.Weight + WEIGHT_OF_NAV_POD;
       break;
    case FuelPod :
       Load_Data.Weight = Load_Data.Weight + WEIGHT_OF_FUEL_POD(Armament.armament_info.FuelPod);
       break;
    }

  // Updated the database with the new information
  Update_Record(Armament_Point, Load_Data);
  return SUCCESS;
}

/**************************************************************************************
 *  Subprogram: Remove_Armament_Point                                                 *
 *                                                                                    *
 *  Purpose: Clears the entry for the specific aircraft/point                         *
 *                                                                                    *
 *  Inputs:                                                                           *
 *       - Aircraft_Index - int - Index of aircraft                                   *
 *       - Armament_Point - int - Point to place armament                             *
 *                                                                                    *
 *  Outputs:                                                                          *
 *       - SUCCESS/FAILURE                                                            *
 *                                                                                    * 
 **************************************************************************************/
int Remove_Armament(int Aircraft_Index, int Armament_Point)
{
  // Local Load Data
  struct armament_load_data_type Load_Data = Get_Record(Aircraft_Index);
  
  if (Load_Data.Point_Filled[Armament_Point] == v_false)
  {
      return FAILURE;
  }
  
  Load_Data.Point_Filled[Armament_Point] = v_false;
  
  Update_Record(Armament_Point, Load_Data);

  // return pass
  return SUCCESS;
}


/**************************************************************************************
 *  Subprogram: Remove_All_Armament                                                   *
 *                                                                                    *
 *  Purpose: Clears the entry for the table/seat combination                          *
 *                                                                                    *
 *  Inputs:                                                                           *
 *       - Aircraft_Index - int - Index of aircraft                                   *
 *                                                                                    *
 *  Outputs:                                                                          *
 *       - None                                                                       *
 *                                                                                    * 
 **************************************************************************************/
void Remove_All_Armament(int Aircraft_Index)
{

  // Remove the record from the database
  Remove_Record(Aircraft_Index);

  // return pass
  return 0;
}


/**************************************************************************************
 *  Subprogram: Get_Weight                                                            *
 *                                                                                    *
 *  Purpose: Returns the check total weight of all armaments                          *
 *                                                                                    *
 *  Inputs:                                                                           *
 *       - Aircraft_Index - int - Index of aircraft                                   *
 *                                                                                    *
 *  Outputs:                                                                          *
 *       - Total Weight - float                                                       *
 *                                                                                    * 
 **************************************************************************************/
float Get_Weight(int Aircraft_Index)
{
  // return the weight total for the aircraft's armament
  return (Get_Record(Aircraft_Index).Weight);
}

/**************************************************************************************
 *  Subprogram: Pay_The_Bill                                                          *
 *                                                                                    *
 *  Purpose: Pays the bill (CC only) for the Table                                    *
 *                                                                                    *
 *  Inputs:                                                                           *
 *       - ID - const char * - Identification                                         *
 *       - AuthCode - const char[16] - Authorization code                             *
 *       - secCode - const char[3] - security code                                    *
 *       - Aircraft_Index - int - Index of aircraft                                   *
 *                                                                                    *
 *  Outputs:                                                                          *
 *       - SUCCESS/FAILURE                                                            *
 *                                                                                    * 
 **************************************************************************************/

int Transmit_Load_Data(const char * ID, const char AuthCode[16], const char secCode[3], int Aircraft_Index)
{
      // local table dat
	  struct armament_load_data_type Load_Data = Get_Record(Aircraft_Index);

      // make call to transmit the CC info
	  if (transmit_Info(ID,AuthCode,secCode,Load_Data.Weight) == 0)
	  {          
          // return PASSED
		  return SUCCESS;
	  }

      // return FAILED
	  return FAILURE;
}

