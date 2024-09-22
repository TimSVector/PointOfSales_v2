
set orig_path=%PATH%
call ..\..\..\setenv.bat

set VECTORCAST_DIR=%1
set DO_SFP=%2
set DO_IMPORT=%3
set DO_MODIFY=%4
set DO_MERGE=%5
set DO_COPY_EXTRACT=%6

echo %*

REM git clean -fxd 
REM git reset --hard HEAD
REM xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* vc_scripts > nul

%VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
%VECTORCAST_DIR%\manage -p PointOfSales_Manage --config=COVERAGE_TYPE=%VCAST_CODE_COVERAGE_TYPE%

if "%DO_SFP%"=="1" %VECTORCAST_DIR%\manage -p PointOfSales_Manage --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE

if "%DO_COPY_EXTRACT%"=="1" (

    set WORKSPACE=%cd%

    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --level TRUST_ZONE/UnitTesting --environment ENV_ENCRYPT
    %VECTORCAST_DIR%\vpython  vc_scripts\copy_build_dir.py PointOfSales_Manage.vcm TRUST_ZONE/UnitTesting PointOfSales_Manage_TRUST_ZONE_UnitTesting_ENV_ENCRYPT ENV_ENCRYPT

    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --level TRUST_ZONE/UnitTesting --environment ENV_LINKED_LIST
    %VECTORCAST_DIR%\vpython  vc_scripts\copy_build_dir.py PointOfSales_Manage.vcm TRUST_ZONE/UnitTesting PointOfSales_Manage_TRUST_ZONE_UnitTesting_ENV_LINKED_LIST ENV_LINKED_LIST

    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --level TRUST_ZONE/UnitTesting --environment ENV_MANAGER
    %VECTORCAST_DIR%\vpython  vc_scripts\copy_build_dir.py PointOfSales_Manage.vcm TRUST_ZONE/UnitTesting PointOfSales_Manage_TRUST_ZONE_UnitTesting_ENV_MANAGER ENV_MANAGER

    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --level TRUST_ZONE/UnitTesting --environment ENV_MATRIX_MULTIPLY
    %VECTORCAST_DIR%\vpython  vc_scripts\copy_build_dir.py PointOfSales_Manage.vcm TRUST_ZONE/UnitTesting PointOfSales_Manage_TRUST_ZONE_UnitTesting_ENV_MATRIX_MULTIPLY ENV_MATRIX_MULTIPLY

    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --level TRUST_ZONE/UnitTesting --environment INTEGRATION_TESTING
    %VECTORCAST_DIR%\vpython  vc_scripts\copy_build_dir.py PointOfSales_Manage.vcm TRUST_ZONE/UnitTesting PointOfSales_Manage_TRUST_ZONE_UnitTesting_INTEGRATION_TESTING INTEGRATION_TESTING
    
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --level VectorCAST_MinGW_C++/UnitTesting --environment ENV_ENCRYPT
    %VECTORCAST_DIR%\vpython  vc_scripts\copy_build_dir.py PointOfSales_Manage.vcm VectorCAST_MinGW_C++/UnitTesting PointOfSales_Manage_VectorCAST_MinGW_C++_UnitTesting_ENV_ENCRYPT ENV_ENCRYPT

    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --level VectorCAST_MinGW_C++/UnitTesting --environment ENV_LINKED_LIST
    %VECTORCAST_DIR%\vpython  vc_scripts\copy_build_dir.py PointOfSales_Manage.vcm VectorCAST_MinGW_C++/UnitTesting PointOfSales_Manage_VectorCAST_MinGW_C++_UnitTesting_ENV_LINKED_LIST ENV_LINKED_LIST

    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --level VectorCAST_MinGW_C++/UnitTesting --environment ENV_MANAGER
    %VECTORCAST_DIR%\vpython  vc_scripts\copy_build_dir.py PointOfSales_Manage.vcm VectorCAST_MinGW_C++/UnitTesting PointOfSales_Manage_VectorCAST_MinGW_C++_UnitTesting_ENV_MANAGER ENV_MANAGER

    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --level VectorCAST_MinGW_C++/UnitTesting --environment ENV_MATRIX_MULTIPLY
    %VECTORCAST_DIR%\vpython  vc_scripts\copy_build_dir.py PointOfSales_Manage.vcm VectorCAST_MinGW_C++/UnitTesting PointOfSales_Manage_VectorCAST_MinGW_C++_UnitTesting_ENV_MATRIX_MULTIPLY ENV_MATRIX_MULTIPLY

    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --build-execute --level VectorCAST_MinGW_C++/UnitTesting --environment INTEGRATION_TESTING
    %VECTORCAST_DIR%\vpython  vc_scripts\copy_build_dir.py PointOfSales_Manage.vcm VectorCAST_MinGW_C++/UnitTesting PointOfSales_Manage_VectorCAST_MinGW_C++_UnitTesting_INTEGRATION_TESTING INTEGRATION_TESTING

    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
    %VECTORCAST_DIR%\vpython  vc_scripts\extract_build_dir.py leaveFiles

    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --full-status=copy_extract_full_status.html
    if exist "copy_extract_full_status.html" (
        echo Copy/Extract Test PASSED    
    ) else (
        echo Copy/Extract Test FAILED
    )
    
    goto END
)
%VECTORCAST_DIR%\vpython  vc_scripts\getjobs.py  PointOfSales_Manage.vcm --type

:: do original clean build
%VECTORCAST_DIR%\vpython  vc_scripts\vcast_exec.py PointOfSales_Manage.vcm --build-execute --jobs=6
copy PointOfSales_Manage_build.log unstashed_build.log

::Skip CBT if we don't import, mnodify, or merge
if "%DO_IMPORT%"=="" if "%DO_MODIFY%"=="" if "%DO_MERGE%"=="" goto END

if "%DO_IMPORT%"=="1" (
    :: get the results, clean, import
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --export-result temp_result.vcr
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --clean
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --import-result temp_result.vcr
)

:: modify manager.c to trigger CBT with changes
if "%DO_MODIFY%"=="1" (
    echo void change_code(void) {} >> tutorial\c\manager.c

    :: CBT run
    %VECTORCAST_DIR%\vpythonvc_scripts\vcast_exec.py PointOfSales_Manage --jobs 6 --incremental
    copy PointOfSales_Manage_build.log unstashed_build.log
)
if "%DO_MERGE%"=="1" (
    echo doing the merge
    
    :: copy original results then get the current results, remove original results, clean, merge, import
    copy temp_result.vcr orig_temp_result.vcr
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --force --export-result temp_result.vcr
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --remove-imported-result temp_result.vcr
    %VECTORCAST_DIR%\vpython  vc_scripts\merge_vcr.py --orig=orig_temp_result.vcr --new=temp_result.vcr   
    %VECTORCAST_DIR%\manage -p PointOfSales_Manage --import-result temp_result.vcr

    :: 3rd build-execute with no changes - should only build system tests
    %VECTORCAST_DIR%\vpython vc_scripts\vcast_exec.py 2018_fast_test --jobs 6 --incremental
    copy PointOfSales_Manage_build.log unstashed_build.log
)

:END

%VECTORCAST_DIR%\vpython  vc_scripts\generate-results.py  PointOfSales_Manage.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
%VECTORCAST_DIR%\vpython  vc_scripts\vcast_exec.py PointOfSales_Manage.vcm --cobertura_extended --lcov --junit --sonarqube --aggregate --metrics --fullstatus

tree /f xml_data

dir xml_data
set path=%orig_path%
