rem @echo off
pushd %~dp0

echo Making POST.exe %1 %2 %3

del /q post.exe > nul 2>&1
del /q build\*.o > nul 2>&1

set MGR_DIR=order_entry
set DRIVER_C=pos_driver.c
set EXEC=post.exe

if "%1"=="-DUSE_COUPLING_DATA_C" (
 set COUPLING=-DUSE_COUPLING_DATA_C
 shift
)

if "%1"=="AIR" (
 set MGR_DIR=armament_entry
 set DRIVER_C=air_driver.c
 set EXEC=air.exe
)

echo %MGR_DIR%

@echo Starting Make > build.log
gcc %COUPLING% -g -I encrypt\inc -I %MGR_DIR%\inc -I database\inc -I utils\inc -o build\database.o        -c database\src\database.c          >> build.log 2>&1
gcc %COUPLING% -g -I encrypt\inc -I %MGR_DIR%\inc -I database\inc -I utils\inc -o build\encrypt.o         -c encrypt\src\encrypt.c            >> build.log 2>&1
gcc %COUPLING% -g -I encrypt\inc -I %MGR_DIR%\inc -I database\inc -I utils\inc -o build\matrix_multiply.o -c encrypt\src\matrix_multiply.c    >> build.log 2>&1
gcc %COUPLING% -g -I encrypt\inc -I %MGR_DIR%\inc -I database\inc -I utils\inc -o build\manager.o         -c %MGR_DIR%\src\manager.c          >> build.log 2>&1
gcc %COUPLING% -g -I encrypt\inc -I %MGR_DIR%\inc -I database\inc -I utils\inc -o build\manager_driver.o  -c main\%DRIVER_C%                  >> build.log 2>&1
gcc %COUPLING% -g -I encrypt\inc -I %MGR_DIR%\inc -I database\inc -I utils\inc -o build\waiting_list.o    -c %MGR_DIR%\src\waiting_list.c     >> build.log 2>&1
gcc %COUPLING% -g -I encrypt\inc -I %MGR_DIR%\inc -I database\inc -I utils\inc -o build\whitebox.o        -c utils\src\whitebox.c             >> build.log 2>&1
gcc %COUPLING% -g -I encrypt\inc -I %MGR_DIR%\inc -I database\inc -I utils\inc -o build\linked_list.o     -c utils\src\linked_list.c          >> build.log 2>&1

gcc build/*.o -o %EXEC% >> build.log 2>&1
@echo Completed Make >> build.log

type build.log 

popd

if EXIST "%EXEC%" exit /b 0

exit /b -1
