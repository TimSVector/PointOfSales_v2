@echo off
cd %~dp0

echo Cleaning...
del /q *.exe *.o *.ali >nul 2>&1

setlocal

echo Setting VectorCAST toolchain...
set VECTORCAST_DIR=c:\vcast\2022sp8
set PATH=D:\vector\tools\gnat\2021\bin;%PATH%

gnatchop -w database.adb
gnatchop -w manager.adb
gnatchop -w whitebox.adb
gnatchop -w manager_driver.adb
gnatchop -w wrap_matrix_multiply.adb
gnatchop -w vcast_ada_options.adb
gnatchop -w vcast_cover_io.adb

echo Compiling matrix_multiply.c with GNAT GCC...
gcc -c -g matrix_multiply.c -o matrix_multiply.o

echo Building Ada project with GNAT...
gnatmake  -gnatv manager_driver.adb -largs matrix_multiply.o

echo Running tests
manager_driver.exe p
copy TESTINSS.DAT D:\vector\customers\boeing\craig\2022\ST_SCENARIO_A.DAT
manager_driver.exe g
copy TESTINSS.DAT D:\vector\customers\boeing\craig\2022\ST_SCENARIO_B.DAT
manager_driver.exe c
copy TESTINSS.DAT D:\vector\customers\boeing\craig\2022\ST_SCENARIO_C.DAT
manager_driver.exe a
copy TESTINSS.DAT D:\vector\customers\boeing\craig\2022\ST_SCENARIO_D.DAT
manager_driver.exe w
copy TESTINSS.DAT D:\vector\customers\boeing\craig\2022\ST_SCENARIO_F.DAT


cd D:\vector\customers\boeing\craig\2022\
echo Importing results

%VECTORCAST_DIR%\clicast -lc -e ada_cover Cover RESult Add ST_SCENARIO_A.DAT ST_SCENARIO_A
%VECTORCAST_DIR%\clicast -lc -e ada_cover Cover RESult Add ST_SCENARIO_B.DAT ST_SCENARIO_B
%VECTORCAST_DIR%\clicast -lc -e ada_cover Cover RESult Add ST_SCENARIO_C.DAT ST_SCENARIO_C
%VECTORCAST_DIR%\clicast -lc -e ada_cover Cover RESult Add ST_SCENARIO_D.DAT ST_SCENARIO_D
%VECTORCAST_DIR%\clicast -lc -e ada_cover Cover RESult Add ST_SCENARIO_F.DAT ST_SCENARIO_F

endlocal
if errorlevel 1 (
    echo Run FAILED
    exit /b 1
) else (
    echo Run SUCCEEDED
)