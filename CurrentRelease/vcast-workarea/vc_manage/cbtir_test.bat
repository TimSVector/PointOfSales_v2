@echo off

echo  0.  Clean up
del /q *result_r1.vcr
del /q *result_r2.vcr
del /q *result_r3.vcr
del /q *result_r4.vcr

git checkout HEAD PointOfSales_Manage.vcm %VCAST_DEMO_SRC_BASE%\order_entry\src\manager.c
git clean -fxd PointOfSales_Manage
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --status
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --disable --compiler TRUST_ZONE
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --disable --compiler VectorCAST_MinGW_C++_ST
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --disable --compiler VectorCAST_MinGW_C++17
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=FALSE


echo  1.  Build and execute the original project
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --jobs 12
::%VECTORCAST_DIR%\manage -p PointOfSales_Manage --full-status
::pause

echo  2.  Export its results to a result_r1.vcr file
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --export-result result_r1.vcr

echo  3.  Clean project
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean

echo  4.  Import r1 file into project p and store copy of r1
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --import-result result_r1.vcr
copy result_r1.vcr orig_result_r1.vcr
::%VECTORCAST_DIR%\manage -p PointOfSales_Manage --full-status
::pause

echo  5.  Change one source file s1
c:\cygwin64\bin\cksum.exe D:\dev\PointOfSales_v2\CurrentRelease\order_entry\src\manager.c
echo void change_code1(void) ^{^} >> %VCAST_DEMO_SRC_BASE%\order_entry\src\manager.c
c:\cygwin64\bin\cksum.exe D:\dev\PointOfSales_v2\CurrentRelease\order_entry\src\manager.c
::pause

echo  6.  Build and execute incremental p - the change to s1 is picked up
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --incremental 
::%VECTORCAST_DIR%\manage -p PointOfSales_Manage --full-status
::pause

echo  7.  Export its results to a .vcr file r2
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --export-result result_r2.vcr
copy result_r2.vcr orig_result_r2.vcr

echo  8.  Call merge_vcr.py r1 r2 to make r3
%VECTORCAST_DIR%\vpython D:\vector\github\vc_scripts_submodule\merge_vcr.py -o result_r1.vcr -n result_r2.vcr
copy result_r2.vcr result_r3.vcr

echo  9.  Store r3
copy result_r3.vcr orig_result_r3.vcr

echo  10. Remove existing r2 and import r3
copy orig_result_r1.vcr result_r1.vcr
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --remove-imported-result result_r1.vcr
::%VECTORCAST_DIR%\manage -p PointOfSales_Manage --full-status
::pause

echo  11. Clean project p
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean

echo  12. Import that r3 file into project p and store r3
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --import-result result_r3.vcr
::%VECTORCAST_DIR%\manage -p PointOfSales_Manage --full-status
::pause

echo  13. Change one source file s2.
c:\cygwin64\bin\cksum.exe D:\dev\PointOfSales_v2\CurrentRelease\order_entry\src\manager.c
echo void change_code2(void) ^{^} >> %VCAST_DEMO_SRC_BASE%\order_entry\src\manager.c
c:\cygwin64\bin\cksum.exe D:\dev\PointOfSales_v2\CurrentRelease\order_entry\src\manager.c

echo  14. Build and execute incremental p again the change to s2 is not picked up.
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --incremental
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --full-status
