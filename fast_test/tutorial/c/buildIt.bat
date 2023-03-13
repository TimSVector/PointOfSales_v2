pushd %~dp0

set path=%VECTORCAST_DIR%\mingw\bin;%PATH%
if exist managerDriver.exe del managerDriver.exe
if exist coverage.xml del coverage.xml
del /q *.gcda

rem This compile command builds an executable that needs stdin
rem gcc -g manager_driver.c manager.c database.c whitebox.c -o managerDriver.exe || exit 1

rem This compile command builds an executable that does not need stdin
gcc -g -DCHECK -fprofile-arcs -ftest-coverage -fPIC -O0 -I./inc order_entry/main/manager_driver.c order_entry/manager.c database/database.c utils/whitebox.c -o managerDriver.exe 

managerDriver

popd

if "" == "%CI_PROJECT_DIR%" set CI_PROJECT_DIR=%cd%

%VECTORCAST_DIR%\vpython %~dp0test.py --xml-pretty --exclude-unreachable-branches --print-summary -o coverage.xml --root %CI_PROJECT_DIR%