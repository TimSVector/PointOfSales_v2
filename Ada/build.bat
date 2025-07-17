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

endlocal
if errorlevel 1 (
    echo Build FAILED
    exit /b 1
) else (
    echo Build SUCCEEDED
)
