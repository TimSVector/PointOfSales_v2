#!/usr/bin/bash

echo Making POST $1 $2 $3


rm -rf post 
rm -rf build/*

MGR_DIR=order_entry
DRIVER_C=pos_driver.c
EXEC=post


echo $MGR_DIR

echo Starting Make > build.log
gcc -g -I encrypt/inc -I $MGR_DIR/inc -I database/inc -I utils/inc -o build/database.o        -c database/src/database.c          >> build.log 2>&1
gcc -g -I encrypt/inc -I $MGR_DIR/inc -I database/inc -I utils/inc -o build/encrypt.o         -c encrypt/src/encrypt.c            >> build.log 2>&1
gcc -g -I encrypt/inc -I $MGR_DIR/inc -I database/inc -I utils/inc -o build/matrix_multiply.o -c encrypt/src/matrix_multiply.c    >> build.log 2>&1
gcc -g -I encrypt/inc -I $MGR_DIR/inc -I database/inc -I utils/inc -o build/manager.o         -c $MGR_DIR/src/manager.c          >> build.log 2>&1
gcc -g -I encrypt/inc -I $MGR_DIR/inc -I database/inc -I utils/inc -o build/manager_driver.o  -c main/$DRIVER_C                  >> build.log 2>&1
gcc -g -I encrypt/inc -I $MGR_DIR/inc -I database/inc -I utils/inc -o build/waiting_list.o    -c $MGR_DIR/src/waiting_list.c     >> build.log 2>&1
gcc -g -I encrypt/inc -I $MGR_DIR/inc -I database/inc -I utils/inc -o build/whitebox.o        -c utils/src/whitebox.c             >> build.log 2>&1
gcc -g -I encrypt/inc -I $MGR_DIR/inc -I database/inc -I utils/inc -o build/linked_list.o     -c utils/src/linked_list.c          >> build.log 2>&1

gcc build/*.o -o $EXEC >> build.log 2>&1
echo Completed Make >> build.log

cat build.log 

