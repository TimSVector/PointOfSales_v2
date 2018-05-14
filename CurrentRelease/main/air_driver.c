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

/**************************************************************************************
 * Unit: manager_driver.c                                                              *
 *                                                                                     *
 * Purpose: This is the main driver for the point of sales demo                        *
 *                                                                                     *
 * Public API:                                                                         *
 *      - main                                                                         *
 *                                                                                     *
 * Private API:                                                                        *
 *      - run_order_test                                                               *
 *                                                                                     *
 *                                                                                     *
 ***************************************************************************************/
                                                                                      
/****************************************************************************************
 *                               System Header Files                                    *
 ****************************************************************************************/

/**************************************************************************************
 *                               Program Header Files                                 *
 **************************************************************************************/

#include "ctypes.h"
#include "manager.h"
#include "database.h"


/**************************************************************************************
 *  Subprogram: run_order_test                                                        *
 *                                                                                    * 
 *  Purpose: To drive the                                                             *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - entree - Integer - Order Entree                                            *
 *       - value  - Integer - Value to verify                                         *
 *       - name   - Integer - Name to printout after the operation is complete        *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - return (int): 0/-1: Success/Failure                                        *
 *                                                                                    * 
 **************************************************************************************/

static int run_order_test(enum e_armament type, int value, const char * name)
{
    // Stores the order for input into the point of sales terminal
    struct armament_type armament;
    
    int ret_val = 0;
    
    // setup the order
    armament.type = type;
    armament.armament_info.FuelPod = NAV_FUEL_1200;

    // Add Armament
    Add_Armament(1, 1, armament);

    //printf ("Check Total: %d\nvalue:  %d\nequal? = %d\n", (int) Get_Check_Total(1), (int)value, (Get_Check_Total(1) == value) ? 1 : 0 );
    
    // process the results
    if (Get_Weight(1) == value)
        printf ("%s: PASSED\n", name);
    else 
        printf ("%s: FAILED %d\n",name, --ret_val);
    
    // send the return value
    return ret_val;
}

/**************************************************************************************
 *  Subprogram: Standard C main                                                       *
 *                                                                                    *
 *  Purpose: This is the main driver for the point of sales demo                      *
 *                                                                                    *
 *  Inputs:                                                                           *
 *       - argc - Integer - count of number of command line arguments                 *
 *       - argv - Character Array Pointer                                             *
 *                   Array of strings containing command line arguments.              *
 *                      From the command line arguments, main will take the           *
 *                      First character (upper/lower case) and use it as follows:     *
 *                         A: Add Free Dessert                                        *
 *                         C: Order Chicken                                           *
 *                         G: Get Check Total                                         *
 *                         L: Order Lobster                                           *
 *                         O: Check Occupied Status                                   *
 *                         P: Pay the Bill                                            *
 *                         S: Order Steak                                             *
 *                         T: Cleat the Table                                         *
 *                         _: Run a Sequence Test                                     *
 *                                                                                    *
 *  Outputs:                                                                          *
 *       - return (int): execution return value:                                      *
 *            - 0 : success                                                           *
 *            - Negative Number : Number of failures                                  *
 *                                                                                    *
 **************************************************************************************/
 
int main(int argc, const char *argv[])
{
    // Stores the order for input into the point of sales terminal
    struct armament_type armament;

    // Stores return value
    int ret_val = 0;

    // Counter for command line argument list
    int i = 1;

    // Loop over the command line arguments
    while (i < argc)
        
        // determine which case needs to run
        switch (argv[i++][0])
        {
            // Air2Air
            case 'A': case 'a':
                ret_val += run_order_test(air2air,14,"Air2Air");
                break;
                
            // Air2Ground
            case 'G': case 'g':
                ret_val += run_order_test(air2gnd,14,"Air2Ground");
                break;
                
            // ECM
            case 'E': case 'e':
                ret_val += run_order_test(eleXmsr,18,"ECM");
                break;
                
            // Navigation/Targeting
            case 'N': case 'n':
                ret_val += run_order_test(podNavTgt,18,"Navigation/Targeting");
                break;
                
            // Fuel Pod
            case 'F': case 'f':
                ret_val += run_order_test(FuelPod,18,"Fuel Pod");
                break;
                
            // Pay the bill
            case 'T': case 't':
                if (Transmit_Load_Data("J-628", "A9524-6773-Z","919",1) == -1)
                    printf ("Transmit_Load_Data: FAILED %d\n", --ret_val);
                else
                    printf ("Transmit_Load_Data: PASSED\n");
                break;
                
            // Get the check total
            case 'w': case 'W':
                printf("The Total is %d\n", (int)Get_Weight(1));
                break;
                
            // Clear the table    
            case 'x': case 'X':
                if (Remove_All_Armament(1) == -1)
                    printf ("Remove_All_Armament: FAILED %d\n", --ret_val);
                else
                    printf ("Remove_All_Armament: PASSED\n");
                break;
                
            // Add Add_Range
            case 'r': case 'R':
                armament.type = air2air;
                armament.armament_info.air2air = AIM_120_AMRAAM;
                Add_Range(&armament);
                if (armament.range == RNG_LONG)
                    printf ("Add_Range: PASSED\n");
                else
                    printf ("Add_Range: FAILED %d\n", --ret_val);
                break;
                
            // Pointed Filled
            case 'P': case 'p':
                // Place an order
                armament.type = air2air;
                armament.armament_info.air2air = AIM_9_SIDEWINDER;

                // Add Armament
                Add_Armament(1, 1, armament);
                
                // check the status
                if (Get_Record(1).Point_Filled[1])
                    printf ("Occupied Status: PASSED\n");
                else
                    printf ("Occupied Status: FAILED %d\n", --ret_val);
                break;
                
            // _Sequence Test
            case '_':
                // add air2air
                ret_val += run_order_test(air2air,WEIGHT_OF_A2A,"air2air");
                
                // add air2gnd
                ret_val += run_order_test(air2gnd,WEIGHT_OF_A2A+WEIGHT_OF_A2G,"air2gnd");
                
                // add eleXmsr
                ret_val += run_order_test(eleXmsr,WEIGHT_OF_A2A+WEIGHT_OF_A2G+WEIGHT_OF_ECM_POD,"eleXmsr");
                
                // transmit load
                if (Transmit_Load_Data("J-628", "A9524-6773-Z","919",1) == -1)
                    printf ("Transmit_Load_Data: FAILED %d\n", --ret_val);
                else
                    printf ("Transmit_Load_Data: PASSED\n");
                break;
                
                // Get check and clear table
                printf("The Total is %d\n", Get_Weight(1));
                
                // Clear the table
                if (Remove_All_Armament(1) == -1)
                    printf ("Remove_All_Armament: FAILED %d\n", --ret_val);
                else
                    printf ("Remove_All_Armament: PASSED\n");
                
                armament.type = air2air;
                armament.armament_info.air2air = AIM_120_AMRAAM;
                Add_Range(&armament);
                if (armament.range == RNG_LONG)
                    printf ("Add_Range: PASSED\n");
                else
                    printf ("Add_Range: FAILED %d\n", --ret_val);
                break;
           default: break;
	  }

  // return the number of failures
  return ret_val;
}
