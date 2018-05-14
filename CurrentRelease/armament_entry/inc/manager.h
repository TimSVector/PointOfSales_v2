#ifndef __MANAGER_H
#define __MANAGER_H

#include "ctypes.h"

extern void Add_Range(struct armament_type* armament);

extern int Add_Armament(int Aircraft_Index, int Armament_Point,
                struct armament_type Armament);

extern int Remove_All_Armament(int Aircraft_Index);

extern float Get_Weight(int Aircraft_Index);

extern int Transmit_Load_Data(const char * ID, const char AuthCode[16], const char secCode[3], int Aircraft_Index);

#endif