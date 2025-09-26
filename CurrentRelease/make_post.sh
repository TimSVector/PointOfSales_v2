#!/bin/bash

set -e
set -o pipefail

# Save original directory and change to script location
pushd "$(dirname "$(readlink -f "$0")")" > /dev/null

# Save PATH for restoration later (if needed)
ORIG_PATH="$PATH"

# Source environment (assumes you rewrite setenv.bat as setenv.sh for Linux)
source ../setenv.sh

echo "Making POST $1 $2 $3"

# Clean old files
rm -f post
rm -f build/*.o

# Default values
MGR_DIR="order_entry"
DRIVER_C="pos_driver.c"
EXEC="post"
COUPLING=""

# Handle arguments
if [[ "$1" == "-DUSE_COUPLING_DATA_C" ]]; then
    COUPLING="-DUSE_COUPLING_DATA_C"
    shift
fi

echo "Starting Make" > build.log

# Compilation steps
gcc $COUPLING -g -I encrypt/inc -I "$MGR_DIR/inc" -I database/inc -I utils/inc -o build/database.o        -c database/src/database.c        >> build.log 2>&1
gcc $COUPLING -g -I encrypt/inc -I "$MGR_DIR/inc" -I database/inc -I utils/inc -o build/encrypt.o         -c encrypt/src/encrypt.c          >> build.log 2>&1
gcc $COUPLING -g -I encrypt/inc -I "$MGR_DIR/inc" -I database/inc -I utils/inc -o build/matrix_multiply.o -c encrypt/src/matrix_multiply.c  >> build.log 2>&1
gcc $COUPLING -g -I encrypt/inc -I "$MGR_DIR/inc" -I database/inc -I utils/inc -o build/manager.o         -c "$MGR_DIR/src/manager.c"        >> build.log 2>&1
gcc $COUPLING -g -I encrypt/inc -I "$MGR_DIR/inc" -I database/inc -I utils/inc -o build/manager_driver.o  -c main/"$DRIVER_C"                >> build.log 2>&1
gcc $COUPLING -g -I encrypt/inc -I "$MGR_DIR/inc" -I database/inc -I utils/inc -o build/waiting_list.o    -c "$MGR_DIR/src/waiting_list.c"   >> build.log 2>&1
gcc $COUPLING -g -I encrypt/inc -I "$MGR_DIR/inc" -I database/inc -I utils/inc -o build/whitebox.o        -c utils/src/whitebox.c            >> build.log 2>&1
gcc $COUPLING -g -I encrypt/inc -I "$MGR_DIR/inc" -I database/inc -I utils/inc -o build/linked_list.o     -c utils/src/linked_list.c         >> build.log 2>&1

# Link the executable
gcc build/*.o -o "$EXEC" >> build.log 2>&1

echo "Completed Make" >> build.log
cat build.log

# Check if executable exists
if [[ ! -f "$EXEC" ]]; then
    popd > /dev/null
    exit 1
fi

# Restore PATH if you modified it
PATH="$ORIG_PATH"

# Return to original directory
popd > /dev/null

