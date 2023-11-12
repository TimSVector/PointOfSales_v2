
set orig_path=%PATH%
call ..\..\..\setenv.bat

set VECTORCAST_DIR=%1
set DO_SFP=%2
set DO_IMPORT=%3
set DO_MODIFY=%4
set DO_MERGE=%5

git clean -fxd 
git reset --hard HEAD
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* vc_scripts > nul

%VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
%VECTORCAST_DIR%\manage -p 2018_fast_test --config=COVERAGE_TYPE=%VCAST_CODE_COVERAGE_TYPE%


if "%DO_SFP%"=="1" %VECTORCAST_DIR%\manage -p PointOfSales_Manage --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE
%VECTORCAST_DIR%\vpython  vc_scripts\getjobs.py  PointOfSales_Manage.vcm --type

:: do original clean build
%VECTORCAST_DIR%\vpython D:\vector\github\FAE\FAE\utilities\parallel_build_execute\parallel_build_execute.py -p PointOfSales_Manage --jobs 6 --incremental
copy PointOfSales_Manage_build.log unstashed_build.log
type unstashed_build.log

if "%DO_IMPORT%"=="1" (
    :: get the results, clean, import
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --export-result temp_result.vcr
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --import-result temp_result.vcr
)

:: modify manager.c to trigger CBT with changes
if "%DO_MODIFY%"=="1" echo void change_code(void) {} >> %VCAST_DEMO_SRC_BASE%\order_entry\src\manager.c

:: CBT run
%VECTORCAST_DIR%\vpython D:\vector\github\FAE\FAE\utilities\parallel_build_execute\parallel_build_execute.py -p PointOfSales_Manage --jobs 6 --incremental
copy PointOfSales_Manage_build.log unstashed_build.log
type unstashed_build.log

if "%DO_MERGE%"=="1" (
    echo doing the merge
    
    :: copy original results then get the current results, remove original results, clean, merge, import
    copy temp_result.vcr orig_temp_result.vcr
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --export-result temp_result.vcr
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --remove-imported-result temp_result.vcr
    %VECTORCAST_DIR%\vpython  vc_scripts\merge_vcr.py --orig=orig_temp_result.vcr --new=temp_result.vcr   
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --import-result temp_result.vcr

    :: 3rd build-execute with no changes - should only build system tests
    %VECTORCAST_DIR%\vpython D:\vector\github\FAE\FAE\utilities\parallel_build_execute\parallel_build_execute.py -p PointOfSales_Manage --jobs 6 --incremental
    copy PointOfSales_Manage_build.log unstashed_build.log
    type unstashed_build.log
)

%VECTORCAST_DIR%\vpython  vc_scripts\generate-results.py  PointOfSales_Manage.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set path=%orig_path%