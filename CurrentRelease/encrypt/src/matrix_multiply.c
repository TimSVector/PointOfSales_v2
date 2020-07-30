
 /**************************************************************************************
 * Unit: matrix_multiply.c                                                             *
 *                                                                                     *
 * Purpose: This is the matrix multiple                                                *
 *                                                                                     *
 * Public API:                                                                         *
 *      - matrix_multipy                                                               *
 *                                                                                     *
 * Private API:                                                                        *
 *      - None                                                                         *
 *                                                                                     *
 *                                                                                     *
 ***************************************************************************************/

 /**************************************************************************************
 *                                User Header Files                                    *
 ***************************************************************************************/
 
#include "ctypes.h"
#include "matrix_multiply.h"

/**************************************************************************************
 *  Subprogram: matrix_multipy                                                        *
 *                                                                                    * 
 *  Purpose: To drive the                                                             *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - M1 - struct matrix_t * - Input Matrix 1                                    *
 *       - M2 - struct matrix_t * - Input Matrix 2                                    *
 *       - result - struct matrix_t * - Output Matrix 2                               *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - return (int): SUCCESS/FAILURE                                        *
 *                                                                                    * 
 **************************************************************************************/
int matrix_multiply(const struct matrix_t * M1, const struct matrix_t * M2, struct matrix_t * result)
{  
  // local variables for counters
  int c, d, k;
  
  // sum of the matrix multiply
  int sum = 0;
   
  // If M1's columns don't match M2's rows, we can't multiply
  if ( M1->col != M2->row )
  {
    // Raise an error
    return FAILURE;
  }
  else
    // Loop over the rows 
    for ( c = 0 ; c <  M1->row ; c++ )
    {
        
      // Loop over the colums
      for ( d = 0 ; d < M2->col ; d++ )
      {
        sum = 0;

        // Sum up the totals
        for ( k = 0 ; k < M2->row ; k++ )
          sum = sum + M1->matrix[c][k]*M2->matrix[k][d];
 
        // Store the results
        result->matrix[c][d] = sum;
      }
    }
 
  // Store the row count
  result->row = M1->row;
  
  // Store the column count
  result->col = M2->col;
  
  // return the result
  return SUCCESS;
}

