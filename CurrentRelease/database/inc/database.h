#ifndef __DATABASE_H
#define __DATABASE_H

#include "ctypes.h"

extern data_type Get_Record(int Table);
extern void Update_Record(int Table, data_type Data);
extern void Remove_Record(int Table);


#endif