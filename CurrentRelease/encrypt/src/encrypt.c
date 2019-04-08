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
 * Unit: encrypt.c                                                                     *
 *                                                                                     *
 * Purpose: Provides psuedo encryption services                                        *
 *                                                                                     *
 * Public API:                                                                         *
 *      - void Add_Included_Dessert(struct order_type* Order)                          *
 *                                                                                     *
 * Private API:                                                                        *
 *      - None                                        *                                *
 *                                                                                     *
 *                                                                                     *
 ***************************************************************************************/

/***************************************************************************************
 *                            Program Headers                                          *
 ***************************************************************************************/

#include "ctypes.h"

#include "matrix_multiply.h"

/***************************************************************************************
 *                            External Defintions                                      *
 ***************************************************************************************/


#ifdef USING_TRUST_ZONE
struct matrix_t TZ_Get_Private_Key(void);
int TZ_Write_Data(struct matrix_t);
int TZ_Reset_Hardware(int);
void log_Error(const char *, int);
int TZ_Wait_Reset(int);
void __SystemReset(const char *);
#define ON_ERROR 1
#define TIMEOUT_10MSEC 1000
#endif

/***************************************************************************************
 *                            Private Prototypes                                       *
 ***************************************************************************************/
static int sendData(struct matrix_t data);
static struct matrix_t generate_private_key(void);
static int Encrypt_Info(const struct matrix_t* private_key, const char * name, const char number[16], const char secCode[3],  float Info);
static int encrypt_and_send(const char * inData, int row, int col, const struct matrix_t* private_key);

/**************************************************************************************
 *  Subprogram: sendData                                                              *
 *                                                                                    * 
 *  Purpose: Sesnd the "encrypted" data to the appropriate place                      *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - data - struct matrix_t                                                     *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - int - SUCCESS/FAILURE                                                      *
 *                                                                                    * 
 **************************************************************************************/

static int sendData(struct matrix_t data)
{
#ifdef USING_TRUST_ZONE
    int ret_val = SUCCESS;
    
    static int failureCount = 0;
    
    ret_val = TZ_Write_Data(data);
    
    // send data via the Trust Zone Data Write
    if (ret_val == FAILURE && failureCount < 10)
    {
        
        /* Log the data error */
        log_Error("Trust Zone Write Error", ++failureCount);
        
        /* Reset the trust zone hardware */
        TZ_Reset_Hardware(ON_ERROR);
        
        /* Wait for trust zone to reset */
        while (TZ_Wait_Reset(TIMEOUT_10MSEC)) 
        {
            // loop until TZ resets
            ;        
        }
    }
    
    if (failureCount >= 10)
    {
        __SystemReset("Encryption Failure");
    }
    return ret_val;
#else
    int i,j;
   
    // display result matrix
    printf ("ENCRYPTED DATA (%dx%d): ", data.row, data.col);
   
    // loop over the data rows
    for (i = 0; i < data.row && i < MAX_MATRIX; i++)
    {
        // loop over the data columns
        for (j = 0; j < data.col && j < MAX_MATRIX; j++)
        {
            // print the resulting data
            printf ("%02X ",data.matrix[i][j]); 
        }
    }
            
    // clean up printf       
    printf ("\n");

    return SUCCESS;
#endif    
}

/**************************************************************************************
 *  Subprogram: generate_private_key                                                  *
 *                                                                                    * 
 *  Purpose: Generate a "private" key                                                 *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - None                                                                       *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - struct matrix_t - random data for now                                      *
 *                                                                                    * 
 **************************************************************************************/
static struct matrix_t generate_private_key(void)
{
    // set up default key
    static struct matrix_t private_key = {-1,-1,};

#ifdef USING_TRUST_ZONE
    // use the hardware's trust zone to generate a private key
    private_key = TZ_Get_Private_Key();
#else
    
    // local variables
    int i = 0,j = 0;
 
    // if no data corruption has occurred...
    if (private_key.row == -1 && private_key.col == -1)
    {
        // set the private key to be 4x4
 	    private_key.row = 4;
 	    private_key.col = 4;
        
        // loop over the matrix rows
 	    for (i = 0; i < MAX_MATRIX; i++)
        {
            // and loop over the matrix rows
 	        for (j = 0; j < MAX_MATRIX; j++)
            {
                // store random data (for now)
                    private_key.matrix[i][j] = rand() & 0xff;    
            }
        }
    }
#endif
    // return the private key
    return private_key;
}

/**************************************************************************************
 *  Subprogram: encrypt_and_send                                                      *
 *                                                                                    * 
 *  Purpose: Encrypts the information and transmits it                                * 
 *  Inputs:                                                                           *
 *       - inData - const char *                                                      *
 *       - row - int                                                                  *
 *       - column - int                                                               *
 *       - private_key - void *                                                       *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - int - SUCCESS/FAILURE                                                      *
 *                                                                                    * 
 **************************************************************************************/
 static int encrypt_and_send(const char * inData, int row, int col, const struct matrix_t* private_key)  
 {
     // Initialize the local variables
    struct matrix_t data2BSent = NULL_MATRIX;
    struct matrix_t result     = NULL_MATRIX;
    
    // sets the data into the out matrix
    setDataMatrix(inData, data2BSent, row, col);
         
    // call the matrix multiply routine to encrypt the data
    if (matrix_multiply(&data2BSent, private_key, &result) == FAILURE)
    {
        // if the matrix multiply failed, return FAILURE
        return FAILURE;
    }

    // otherwise send the data
    return sendData (result);
 }
 
/**************************************************************************************
 *  Subprogram: Encrypt_Info                                                          *
 *                                                                                    * 
 *  Purpose: Encrypts the credit card information and transmits it in chucks          * 
 *  Inputs:                                                                           *
 *       - private_key - void *                                                       *
 *       - name        - const char *                                                 *
 *       - number      - const char[16]                                               *
 *       - secCode     - const char [3]                                               *
 *       - Info  - float                                                              *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - int - SUCCESS/FAILURE                                                      *
 *                                                                                    * 
 **************************************************************************************/
static int Encrypt_Info(const struct matrix_t* private_key, const char * name, const char number[16], const char secCode[3],  float Info)
{
    // init the return value
    int ret_val = SUCCESS;
    
    // send the name
    ret_val |= encrypt_and_send(name      , MAX_MATRIX, MAX_MATRIX, private_key);
    
    // send the cardNumber
    ret_val |= encrypt_and_send(number, MAX_MATRIX, MAX_MATRIX, private_key);
    
    // send the secCode
    ret_val |= encrypt_and_send(secCode   , 1         , MAX_MATRIX, private_key);
    
    // send the total
    ret_val |= encrypt_and_send((const char *)&Info, MAX_MATRIX, MAX_MATRIX, private_key);

    // return SUCCESS/FAILURE
    return ret_val;
}

/**************************************************************************************
 *  Subprogram: transmit_Info                                                      *
 *                                                                                    * 
 *  Purpose: Transmit the credit card information                                     *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - name        - const char *                                                 *
 *       - number      - const char[16]                                               *
 *       - secCode     - const char [3]                                               *
 *       - Info        - float                                                        *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - int - SUCCESS/FAILURE                                                      *
 *                                                                                    * 
 **************************************************************************************/

int transmit_Info (const char * name, const char number[16], const char secCode[3], float Info)
{
    // generate a private key
    struct matrix_t private_key = generate_private_key();

    // Encrypt and send the data
    return Encrypt_Info(&private_key,name,number,secCode, Info);
   
}