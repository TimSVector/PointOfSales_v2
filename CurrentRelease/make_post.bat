rem @echo off
pushd %~dp0
call ..\setenv.bat

echo Making POST.exe %1 %2 %3

del /q post.exe > nul 2>&1
del /q build\*.o > nul 2>&1

@echo Starting Make > build.log
gcc -g -I %VCAST_DEMO_SRC_BASE%\encrypt\inc -I %VCAST_DEMO_SRC_BASE%\order_entry\inc -I %VCAST_DEMO_SRC_BASE%\database\inc -I %VCAST_DEMO_SRC_BASE%\utils\inc -o %VCAST_DEMO_SRC_BASE%\build\database.o        -c %VCAST_DEMO_SRC_BASE%\database\src\database.c          >> %VCAST_DEMO_SRC_BASE%\build.log 2>&1
gcc -g -I %VCAST_DEMO_SRC_BASE%\encrypt\inc -I %VCAST_DEMO_SRC_BASE%\order_entry\inc -I %VCAST_DEMO_SRC_BASE%\database\inc -I %VCAST_DEMO_SRC_BASE%\utils\inc -o %VCAST_DEMO_SRC_BASE%\build\encrypt.o         -c %VCAST_DEMO_SRC_BASE%\encrypt\src\encrypt.c            >> %VCAST_DEMO_SRC_BASE%\build.log 2>&1
gcc -g -I %VCAST_DEMO_SRC_BASE%\encrypt\inc -I %VCAST_DEMO_SRC_BASE%\order_entry\inc -I %VCAST_DEMO_SRC_BASE%\database\inc -I %VCAST_DEMO_SRC_BASE%\utils\inc -o %VCAST_DEMO_SRC_BASE%\build\matrix_multiply.o -c %VCAST_DEMO_SRC_BASE%\encrypt\src\matrix_multiply.c    >> %VCAST_DEMO_SRC_BASE%\build.log 2>&1
gcc -g -I %VCAST_DEMO_SRC_BASE%\encrypt\inc -I %VCAST_DEMO_SRC_BASE%\order_entry\inc -I %VCAST_DEMO_SRC_BASE%\database\inc -I %VCAST_DEMO_SRC_BASE%\utils\inc -o %VCAST_DEMO_SRC_BASE%\build\manager.o         -c %VCAST_DEMO_SRC_BASE%\order_entry\src\manager.c         >> %VCAST_DEMO_SRC_BASE%\build.log 2>&1
gcc -g -I %VCAST_DEMO_SRC_BASE%\encrypt\inc -I %VCAST_DEMO_SRC_BASE%\order_entry\inc -I %VCAST_DEMO_SRC_BASE%\database\inc -I %VCAST_DEMO_SRC_BASE%\utils\inc -o %VCAST_DEMO_SRC_BASE%\build\manager_driver.o  -c %VCAST_DEMO_SRC_BASE%\main\pos_driver.c                >> %VCAST_DEMO_SRC_BASE%\build.log 2>&1
gcc -g -I %VCAST_DEMO_SRC_BASE%\encrypt\inc -I %VCAST_DEMO_SRC_BASE%\order_entry\inc -I %VCAST_DEMO_SRC_BASE%\database\inc -I %VCAST_DEMO_SRC_BASE%\utils\inc -o %VCAST_DEMO_SRC_BASE%\build\waiting_list.o    -c %VCAST_DEMO_SRC_BASE%\order_entry\src\waiting_list.c   >> %VCAST_DEMO_SRC_BASE%\build.log 2>&1
gcc -g -I %VCAST_DEMO_SRC_BASE%\encrypt\inc -I %VCAST_DEMO_SRC_BASE%\order_entry\inc -I %VCAST_DEMO_SRC_BASE%\database\inc -I %VCAST_DEMO_SRC_BASE%\utils\inc -o %VCAST_DEMO_SRC_BASE%\build\whitebox.o        -c %VCAST_DEMO_SRC_BASE%\utils\src\whitebox.c             >> %VCAST_DEMO_SRC_BASE%\build.log 2>&1
gcc -g -I %VCAST_DEMO_SRC_BASE%\encrypt\inc -I %VCAST_DEMO_SRC_BASE%\order_entry\inc -I %VCAST_DEMO_SRC_BASE%\database\inc -I %VCAST_DEMO_SRC_BASE%\utils\inc -o %VCAST_DEMO_SRC_BASE%\build\linked_list.o     -c %VCAST_DEMO_SRC_BASE%\utils\src\linked_list.c          >> %VCAST_DEMO_SRC_BASE%\build.log 2>&1

gcc %VCAST_DEMO_SRC_BASE%\build\*.o -o %VCAST_DEMO_SRC_BASE%\post.exe >> %VCAST_DEMO_SRC_BASE%\build.log 2>&1
@echo Completed Make >> %VCAST_DEMO_SRC_BASE%\build.log

type %VCAST_DEMO_SRC_BASE%\build.log 

popd

if EXIST "%VCAST_DEMO_SRC_BASE%\post.exe" exit /b 0

exit /b -1
