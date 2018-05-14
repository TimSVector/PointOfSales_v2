#ifndef _TUTORIAL_TYPES_H_
#define _TUTORIAL_TYPES_H_ 

#define AIRCRAFT_TOTAL   10
#define ARMAMENT_POINTS  10

#include <stdlib.h>

#define SUCCESS 0
#define FAILURE -1

enum e_boolean { v_false, v_true };

enum e_range   { INVALID_RANGE = 0, RNG_SHORT = 1, RNG_MEDIUM = 2, RNG_LONG = 4, RNG_FIRE_FORGET = 8 };

enum e_armament  { air2air, air2gnd, eleXmsr, podNavTgt, FuelPod };
enum e_air2air   { NO_A2A, AIM_9_SIDEWINDER, AIM_7_SPARROW, AIM_120_AMRAAM };
enum e_air2gnd   { NO_A2G, A2G_MISSLE, A2G_BOMB, A2G_ROCKET, A2G_SMART_BOMB, A2G_BRILLIANT_BOMB };
enum e_eleXmsr   { NO_ECM, ECM_COMM, ECM_RADAR, ECM_TGT, ECM_IR_LASER };
enum e_podNavTgt { NO_NAV_TGT_POD, NAV_POD, TGT_POD, MIXED_POD };
enum e_FuelPod   { NO_FUEL_POD, NAV_FUEL_1200, NAV_FUEL_2400, NAV_FUEL_4800 };

#define WEIGHT_OF_A2A          6
#define WEIGHT_OF_A2G          12
#define WEIGHT_OF_ECM_POD      2
#define WEIGHT_OF_NAV_POD      2
#define WEIGHT_OF_FUEL_POD(x)  8*(x)


struct armament_type
{
  union vc
  {
    enum e_air2air     air2air;
    enum e_air2gnd     air2gnd;
    enum e_eleXmsr     ecm;
    enum e_podNavTgt   navTgtPod;
    enum e_FuelPod     FuelPod;
  } armament_info;
  enum e_armament type;
  enum e_range    range;
};

typedef unsigned short armament_point;

struct armament_load_data_type
{
  enum e_range         Range;
  enum e_boolean       Point_Filled[10];
  char                 Designator[10];
  struct armament_type Armament[ARMAMENT_POINTS];
  float                Weight;
  float                Weight_Distribution[2];
};

typedef struct armament_load_data_type data_type;

typedef char name_type[32];

#define BLANK_ARMAMENT {0,0,0,0,0}
#define BLANK_ARM_POINTS  {BLANK_ARMAMENT,BLANK_ARMAMENT,BLANK_ARMAMENT,BLANK_ARMAMENT,BLANK_ARMAMENT,BLANK_ARMAMENT,BLANK_ARMAMENT,BLANK_ARMAMENT,BLANK_ARMAMENT,BLANK_ARMAMENT }
#define BLANK_FILLED {v_false, v_false, v_false, v_false, v_false, v_false, v_false, v_false, v_false, v_false }
#define BLANK_DATA_ITEM {0,  {INVALID_RANGE, BLANK_FILLED,"", BLANK_ARM_POINTS,  0.0, {50.0,50.0}}}


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#endif /* _TUTORIAL_TYPES_H_ */
