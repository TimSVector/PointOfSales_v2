#ifndef _TUTORIAL_TYPES_H_
#define _TUTORIAL_TYPES_H_ 

#define INSTRUMENT_SECTION_TOTAL   10
#define MEASUREMENT_POINTS  10

#include <stdlib.h>

#define SUCCESS 0
#define FAILURE -1

enum e_boolean { v_false, v_true };

enum e_safety   { INVALID_SAFETY = 0, BASIC_SAFETY = 1, MEDIUM_SAFETY = 2, ADVANCED_SAFETY = 4, SELF_DRIVING = 8 };

enum e_instrument        { telemetry, levels, climate, safety, advanced_safety };
enum e_telemetry         { SPEED, DIRECTION,  };
enum e_levels            { GAS_LEVEL, ENGINE_TEMP, OIL_LEVEL, TIRE_PRESSURE };
enum e_climate           { CURRENT_TEMP, SET_TEMP, FRONT_BACK_SYNC, BACK_TEMP, BACK_SET_TEMP  };
enum e_basic_safety      { AIRBAG = 1, AIRBAG_PASSENGER_OVERRIDE = 2, ANTILOCK_BREAK_SYSTEM = 4, CRASH_PREVENTION = 8 };
enum e_advanced_safety   { NO_ADVANCED_SAFETY, FRONT_DISTANCE = 0x10, LANE_DRIFT = 0x20, BLIND_SPOT = 0x40, ROAD_CONDITION = 0x80 };

#define SELF_DRIVING_CODE      0xFA0000
#define ALL_NORMAL_SAFETY   = (AIRBAG | AIRBAG_PASSENGER_OVERRIDE | ANTILOCK_BREAK_SYSTEM |CRASH_PREVENTION)
#define ALL_ADVANCED_SAFETY = (ALL_NORMAL_SAFETY | FRONT_DISTANCE | LANE_DRIFT | BLIND_SPOT |ROAD_CONDITION)
#define SELF_DRIVE_SAFETY   = (ALL_ADVANCED_SAFETY | 0xFA0000)


struct insturment_cluster
{
  union vc
  {
    enum e_telemetry        telemetry;
    enum e_levels           levels;
    enum e_climate          e_climate;
    enum e_basic_safety     basic_safety;
    enum e_advanced_safety  advanced_safety;
  } armament_info;
  enum e_instrument instrument;
  enum e_safety     safety;
};

typedef unsigned short armament_point;
typedef char name_type[32];

struct instrument_configuration_type
{
  enum e_safety     safety;
  enum e_boolean    Point_Filled[MEASUREMENT_POINTS];
  name_type         Designator;
  struct insturment_cluster instrument[INSTRUMENT_SECTION_TOTAL];
};

typedef struct instrument_configuration_type data_type;


#define BLANK_INSTRUMENT {0,0,0,0,0}
#define BLANK_INST_POINTS  {BLANK_INSTRUMENT,BLANK_INSTRUMENT,BLANK_INSTRUMENT,BLANK_INSTRUMENT,BLANK_INSTRUMENT,BLANK_INSTRUMENT,BLANK_INSTRUMENT,BLANK_INSTRUMENT,BLANK_INSTRUMENT,BLANK_INSTRUMENT }
#define BLANK_FILLED {v_false, v_false, v_false, v_false, v_false, v_false, v_false, v_false, v_false, v_false }
#define BLANK_DATA_ITEM {0,  {INVALID_SAFETY, BLANK_FILLED,"", BLANK_INST_POINTS}}


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#endif /* _TUTORIAL_TYPES_H_ */
