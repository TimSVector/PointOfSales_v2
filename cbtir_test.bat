@echo on

echo  0.  Clean up
del /q *result_r1.vcr
del /q *result_r2.vcr
del /q *result_r3.vcr
del /q *result_r4.vcr

git checkout HEAD PointOfSales_Manage.vcm ..\..\order_entry\src\manager.c ..\..\encrypt\src\encrypt.c %~1
git clean -fxd PointOfSales_Manage
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --status
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --disable --compiler TRUST_ZONE
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --disable --compiler VectorCAST_MinGW_C++_ST
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --disable --compiler VectorCAST_MinGW_C++17
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=FALSE

if "%~1"=="" (
    echo  1.  Build and execute the original project
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --jobs 12
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --full-status

    echo  2.  Export its results to a result_r1.vcr file
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --export-result result_r1.vcr

    echo  3.  Clean project
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean

) else (
    echo  1.  Use base project with no results
    echo  2.  Using %1 as results base
    echo  3.  Project already cleaned
    copy %1 result_r1.vcr
)

echo  4.  Import r1 file into project p and store copy of r1
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --import-result result_r1.vcr
copy result_r1.vcr orig_result_r1.vcr
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --full-status

REM pause

echo  5.  Change one source file s1
c:\cygwin64\bin\cksum.exe ..\..\order_entry\src\manager.c
echo void MGR_change_code1(void) ^{^} >> ..\..\order_entry\src\manager.c
c:\cygwin64\bin\cksum.exe ..\..\order_entry\src\manager.c
REM pause

echo  6.  Build and execute incremental p - the change to s1 is picked up
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --incremental 
copy PointOfSales_Manage_manage_incremental_rebuild_report.html step_6_PointOfSales_Manage_manage_incremental_rebuild_report.html
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --full-status
REM pause

echo  7.  Export its results to a .vcr file r2
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --export-result result_r2.vcr
copy result_r2.vcr orig_result_r2.vcr

echo  8.  Call merge_vcr.py r1 r2 to make r3
%VECTORCAST_DIR%\vpython D:\vector\github\vc_scripts_submodule\merge_vcr.py -o result_r1.vcr -n result_r2.vcr
copy result_r2.vcr result_r3.vcr

echo  9.  Store r3
copy result_r3.vcr orig_result_r3.vcr

echo  10. Remove existing r1 from project
copy orig_result_r1.vcr result_r1.vcr
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --remove-imported-result result_r1.vcr
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --full-status
REM pause

echo  11. Clean project p
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean

echo  12. Import that r3 file into project p
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --import-result result_r3.vcr
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --full-status
REM pause

echo  13. Change one source file s2.
c:\cygwin64\bin\cksum.exe ..\..\encrypt\src\encrypt.c
echo void WB_change_code2(void) ^{^} >> ..\..\encrypt\src\encrypt.c
c:\cygwin64\bin\cksum.exe ..\..\encrypt\src\encrypt.c

echo  14. Build and execute incremental p again the change to s2 is not picked up.
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --incremental
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --full-status


:END