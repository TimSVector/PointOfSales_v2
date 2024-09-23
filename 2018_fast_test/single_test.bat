
set orig_path=%PATH%
call %WORKSPACE%\setenv.bat > nul

set VECTORCAST_DIR=%1
set DO_SFP=%2
set DO_IMPORT=%3
set DO_MODIFY=%4
set DO_MERGE=%5
set DO_COPY_EXTRACT=%6

echo %* 

git clean -fxd
git checkout HEAD 2018_fast_test.vcm
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* %WORKSPACE%\vc_scripts > nul

%VECTORCAST_DIR%\manage -p 2018_fast_test --clean
%VECTORCAST_DIR%\manage -p 2018_fast_test --config=COVERAGE_TYPE=%VCAST_CODE_COVERAGE_TYPE%

if "%DO_SFP%"=="1" %VECTORCAST_DIR%\manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE

if "%DO_COPY_EXTRACT%"=="1" (

  %VECTORCAST_DIR%\manage -p 2018_fast_test --clean
  %VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute --level VectorCAST_MinGW_C/TestSuite --environment DATABASE_C
  %VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\copy_build_dir.py 2018_fast_test.vcm VectorCAST_MinGW_C/TestSuite 2018_fast_test_VectorCAST_MinGW_C_TestSuite_DATABASE_C DATABASE_C

  %VECTORCAST_DIR%\manage -p 2018_fast_test --clean
  %VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute --level VectorCAST_MinGW_C/TestSuite --environment MANAGER_C
  %VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\copy_build_dir.py 2018_fast_test.vcm VectorCAST_MinGW_C/TestSuite 2018_fast_test_VectorCAST_MinGW_C_TestSuite_MANAGER_C MANAGER_C

  %VECTORCAST_DIR%\manage -p 2018_fast_test --clean
  %VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute --level VectorCAST_MinGW_C/TestSuite2 --environment DATABASE_C
  %VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\copy_build_dir.py 2018_fast_test.vcm VectorCAST_MinGW_C/TestSuite2 2018_fast_test_VectorCAST_MinGW_C_TestSuite2_DATABASE_C DATABASE_C

  %VECTORCAST_DIR%\manage -p 2018_fast_test --clean
  %VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute --level VectorCAST_MinGW_C/TestSuite2 --environment INTEGRATION_TEST
  %VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\copy_build_dir.py 2018_fast_test.vcm VectorCAST_MinGW_C/TestSuite2 2018_fast_test_VectorCAST_MinGW_C_TestSuite2_INTEGRATION_TEST INTEGRATION_TEST

  %VECTORCAST_DIR%\manage -p 2018_fast_test --clean
  %VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\extract_build_dir.py leaveFiles

  %VECTORCAST_DIR%\manage -p 2018_fast_test --full-status=copy_extract_full_status.html
  if exist "copy_extract_full_status.html" (
    echo Copy/Extract Test PASSED
  ) else (
    echo Copy/Extract Test FAILED
  )

  goto END
)
%VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\getjobs.py 2018_fast_test.vcm --type

:: do original clean build
%VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\vcast_exec.py 2018_fast_test.vcm --build-execute --jobs=6
copy PointOfSales_Manage_build.log unstashed_build.log

::Skip CBT if we don't import, mnodify, or merge
if "%DO_IMPORT%"=="" if "%DO_MODIFY%"=="" if "%DO_MERGE%"=="" goto END

if "%DO_IMPORT%"=="1" (
  :: get the results, clean, import
  %VECTORCAST_DIR%\manage -p 2018_fast_test --export-result temp_result.vcr
  %VECTORCAST_DIR%\manage -p 2018_fast_test --clean
  %VECTORCAST_DIR%\manage -p 2018_fast_test --import-result temp_result.vcr
)

:: modify manager.c to trigger CBT with changes
if "%DO_MODIFY%"=="1" (
  echo void change_code(void) {} >> tutorial\c\manager.c

  :: CBT run
  %VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\vcast_exec.py 2018_fast_test --jobs 6 --incremental
  copy 2018_fast_test_build.log unstashed_build.log
)

if "%DO_MERGE%"=="1" (
  echo doing the merge

  :: copy original results then get the current results, remove original results, clean, merge, import
  copy temp_result.vcr orig_temp_result.vcr
  %VECTORCAST_DIR%\manage -p 2018_fast_test --force --export-result temp_result.vcr
  %VECTORCAST_DIR%\manage -p 2018_fast_test --remove-imported-result temp_result.vcr
  %VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\merge_vcr.py --orig=orig_temp_result.vcr --new=temp_result.vcr
  %VECTORCAST_DIR%\manage -p 2018_fast_test --import-result temp_result.vcr

  :: 3rd build-execute with no changes - should only build system tests
  %VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\vcast_exec.py 2018_fast_test --jobs 6 --incremental
  copy 2018_fast_test_build.log unstashed_build.log
)

:END

%VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\generate-results.py 2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
%VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\vcast_exec.py 2018_fast_test.vcm --cobertura_extended --lcov --junit --sonarqube --aggregate --metrics --fullstatus

tree /f xml_data

dir xml_data
set path=%orig_path%
