#ifndef ___MM_H
#define ___MM_H

#define MAX_MATRIX 4

struct matrix_t
{
	int row, col;
	int matrix[MAX_MATRIX][MAX_MATRIX];
};

#ifndef SUCCESS
#ifndef FAILURE
enum {SUCCESS = 0, FAILURE = -1};
#endif
#endif

#define NULL_MATRIX  {MAX_MATRIX,MAX_MATRIX, 	\
{  {0,0,0,0},				\
   {0,0,0,0},				\
   {0,0,0,0},				\
   {0,0,0,0},				\
}					 }

#define IDENTITY_MATRIX  {MAX_MATRIX,MAX_MATRIX, 	\
{  {1,0,0,0},				\
   {0,1,0,0},				\
   {0,0,1,0},				\
   {0,0,0,1},				\
}                         }

extern int matrix_multiply(const struct matrix_t * M1, const struct matrix_t * M2, struct matrix_t * result);

#ifndef RAND_REG
#define RAND_REG() (-1)
#endif

#define setDataMatrix(inData,outData,i_max,j_max) if (inData)   \
  {                                                             \
    int i,j,inEnd = 0;                                          \
    for (i = 0; i < i_max; i++)                                 \
        for (j = 0; j < j_max ; j++)                            \
        {                                                       \
            if (*inData == '\0')                                \
                inEnd = 1;                                      \
            if (!inEnd)                                         \
                outData.matrix[i][j] = *inData++;               \
            else                                                \
                outData.matrix[i][j] = 0;                       \
        }                                                       \
    outData.row = i_max;                                        \
    outData.col = j_max;                                        \
  }

#endif
