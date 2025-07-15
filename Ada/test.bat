
cd %~dp0

del /q *.exe *.o *.ali

set VECTORCAST_DIR=c:\vcast\2022sp8

gnatchop -w database.adb
gnatchop -w manager.adb
gnatchop -w whitebox.adb
gnatchop -w manager_driver.adb
gnatchop -w wrap_matrix_multiply.adb
gnatchop -w vcast_ada_options.adb
gnatchop -w vcast_cover_io.adb
gnatchop -w vcast_cover_io.adb

gcc -c -g matrix_multiply.c -o matrix_multiply.o

gnatmake manager_driver.adb matrix_multiply.o -g


pause

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

%VECTORCAST_DIR%\clicast -lc -e ada_cover Cover RESult Add ST_SCENARIO_A.DAT ST_SCENARIO_A
%VECTORCAST_DIR%\clicast -lc -e ada_cover Cover RESult Add ST_SCENARIO_B.DAT ST_SCENARIO_B
%VECTORCAST_DIR%\clicast -lc -e ada_cover Cover RESult Add ST_SCENARIO_C.DAT ST_SCENARIO_C
%VECTORCAST_DIR%\clicast -lc -e ada_cover Cover RESult Add ST_SCENARIO_D.DAT ST_SCENARIO_D
%VECTORCAST_DIR%\clicast -lc -e ada_cover Cover RESult Add ST_SCENARIO_F.DAT ST_SCENARIO_F
