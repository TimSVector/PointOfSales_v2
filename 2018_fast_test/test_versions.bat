@echo off
set DO_SFP=0
set DO_IMPORT=0
set DO_MODIFY=0
set DO_MERGE=0

echo %* | findstr \i SFP    > nul
if "%errorlevel%"=="0" set DO_SFP=1
echo %* | findstr \i IMPORT    > nul
if "%errorlevel%"=="0" set DO_IMPORT=1
echo %* | findstr \i MODIFY    > nul
if "%errorlevel%"=="0" set DO_MODIFY=1
echo %* | findstr \i MERGE    > nul
if "%errorlevel%"=="0" set DO_MERGE=1

set workspace=%cd%

set ORIG_PATH=%PATH%
set ORIG_VCD=%VECTORCAST_DIR%

@echo on
call single_test.bat c:\vcast\2018sp5 %DO_SFP% %DO_IMPORT% %DO_MODIFY% %DO_MERGE%
pause 


set VECTORCAST_DIR=c:\vcast\2018sp5
git clean -fxd 
git reset --hard HEAD
xcopy \E \S \Y \I %VCAST_VC_SCRIPTS%\*.* vc_scripts > nul

%VECTORCAST_DIR%\manage -p 2018_fast_test --clean
if "%DO_SFP%" == "1" %VECTORCAST_DIR%\manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE
%VECTORCAST_DIR%\vpython  vc_scripts\getjobs.py  D:\dev\PointOfSales_v2\2018_fast_test\2018_fast_test.vcm --type

:: do original clean build
%VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute > unstashed_build.log & type unstashed_build.log 

if "%DO_IMPORT%" == "1" (
    :: get the results, clean, import
    %VECTORCAST_DIR%\manage -p 2018_fast_test --export-result temp_result.vcr
    %VECTORCAST_DIR%\manage -p 2018_fast_test --clean
    %VECTORCAST_DIR%\manage -p 2018_fast_test --import-result temp_result.vcr
)

:: modify manager.c to trigger CBT with changes
if "%DO_MODIFY%" == "1" echo void change_code(void) {} >> tutorial\c\manager.c

:: CBT run
%VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute --incremental > unstashed_build.log & type unstashed_build.log

if "%DO_MERGE%" == "1" (
    :: copy original results then get the current results, remove original results, clean, merge, import
    copy temp_result.vcr orig_temp_result.vcr
    %VECTORCAST_DIR%\manage -p 2018_fast_test --export-result temp_result.vcr
    %VECTORCAST_DIR%\manage -p 2018_fast_test --remove-imported-result temp_result.vcr
    %VECTORCAST_DIR%\vpython  vc_scripts\merge_vcr.py --orig orig_temp_result.vcr --new  temp_result.vcr    
    %VECTORCAST_DIR%\manage -p 2018_fast_test --import-result temp_result.vcr
    
    :: secondary CBT run with no changes
    %VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute --incremental > unstashed_build.log & type unstashed_build.log
    
    :: modify manager.c to trigger CBT with changes
    if "%DO_MODIFY%" == "1" echo void change_code2(void) {} >> tutorial\c\manager.c
)


%VECTORCAST_DIR%\vpython  vc_scripts\generate-results.py  D:\dev\PointOfSales_v2\2018_fast_test\2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%
set VECTORCAST_DIR=%ORIG_VCD%

::pause

set VECTORCAST_DIR=c:\vcast\2019sp6
git clean -fxd
git reset --hard HEAD
xcopy \E \S \Y \I %VCAST_VC_SCRIPTS%\*.* vc_scripts > nul

%VECTORCAST_DIR%\manage -p 2018_fast_test --clean
if "%DO_SFP%" == "1" %VECTORCAST_DIR%\manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE
%VECTORCAST_DIR%\vpython  vc_scripts\getjobs.py  D:\dev\PointOfSales_v2\2018_fast_test\2018_fast_test.vcm --type
%VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute > unstashed_build.log & type unstashed_build.log 

if "%DO_IMPORT%" == "1" (
    %VECTORCAST_DIR%\manage -p 2018_fast_test --export-result temp_result.vcr
    %VECTORCAST_DIR%\manage -p 2018_fast_test --clean
    %VECTORCAST_DIR%\manage -p 2018_fast_test --import-result temp_result.vcr
)

if "%DO_MODIFY%" == "1" echo void change_code(void) {} >> tutorial\c\manager.c
%VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute --incremental > unstashed_build.log & type unstashed_build.log

%VECTORCAST_DIR%\vpython  vc_scripts\generate-results.py  D:\dev\PointOfSales_v2\2018_fast_test\2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%
set VECTORCAST_DIR=%ORIG_VCD%

::pause

set VECTORCAST_DIR=c:\vcast\2020sp7
git clean -fxd
git reset --hard HEAD
xcopy \E \S \Y \I %VCAST_VC_SCRIPTS%\*.* vc_scripts > nul

%VECTORCAST_DIR%\manage -p 2018_fast_test --clean
if "%DO_SFP%" == "1" %VECTORCAST_DIR%\manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE
%VECTORCAST_DIR%\vpython  vc_scripts\getjobs.py  D:\dev\PointOfSales_v2\2018_fast_test\2018_fast_test.vcm --type
%VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute > unstashed_build.log & type unstashed_build.log 

if "%DO_IMPORT%" == "1" (
    %VECTORCAST_DIR%\manage -p 2018_fast_test --export-result temp_result.vcr
    %VECTORCAST_DIR%\manage -p 2018_fast_test --clean
    %VECTORCAST_DIR%\manage -p 2018_fast_test --import-result temp_result.vcr
) 

if "%DO_MODIFY%" == "1" echo void change_code(void) {} >> tutorial\c\manager.c
%VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute --incremental > unstashed_build.log & type unstashed_build.log

%VECTORCAST_DIR%\vpython  vc_scripts\generate-results.py  D:\dev\PointOfSales_v2\2018_fast_test\2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%
set VECTORCAST_DIR=%ORIG_VCD%

::pause

set VECTORCAST_DIR=c:\vcast\2021sp8
git clean -fxd
git reset --hard HEAD
xcopy \E \S \Y \I %VCAST_VC_SCRIPTS%\*.* vc_scripts > nul

%VECTORCAST_DIR%\manage -p 2018_fast_test --clean
if "%DO_SFP%" == "1" %VECTORCAST_DIR%\manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE
%VECTORCAST_DIR%\vpython  vc_scripts\getjobs.py  D:\dev\PointOfSales_v2\2018_fast_test\2018_fast_test.vcm --type
%VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute > unstashed_build.log & type unstashed_build.log 

if "%DO_IMPORT%" == "1" (
    %VECTORCAST_DIR%\manage -p 2018_fast_test --export-result temp_result.vcr
    %VECTORCAST_DIR%\manage -p 2018_fast_test --clean
    %VECTORCAST_DIR%\manage -p 2018_fast_test --import-result temp_result.vcr
) 

if "%DO_MODIFY%" == "1" echo void change_code(void) {} >> tutorial\c\manager.c
%VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute --incremental > unstashed_build.log & type unstashed_build.log

%VECTORCAST_DIR%\vpython  vc_scripts\generate-results.py  D:\dev\PointOfSales_v2\2018_fast_test\2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%
set VECTORCAST_DIR=%ORIG_VCD%

::pause

set VECTORCAST_DIR=c:\vcast\2022sp8
git clean -fxd
git reset --hard HEAD
xcopy \E \S \Y \I %VCAST_VC_SCRIPTS%\*.* vc_scripts > nul

%VECTORCAST_DIR%\manage -p 2018_fast_test --clean
if "%DO_SFP%" == "1" %VECTORCAST_DIR%\manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE
%VECTORCAST_DIR%\vpython  vc_scripts\getjobs.py  D:\dev\PointOfSales_v2\2018_fast_test\2018_fast_test.vcm --type
%VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute > unstashed_build.log & type unstashed_build.log 

if "%DO_IMPORT%" == "1" (
    %VECTORCAST_DIR%\manage -p 2018_fast_test --export-result temp_result.vcr
    %VECTORCAST_DIR%\manage -p 2018_fast_test --clean
    %VECTORCAST_DIR%\manage -p 2018_fast_test --import-result temp_result.vcr
) 

if "%DO_MODIFY%" == "1" echo void change_code(void) {} >> tutorial\c\manager.c
%VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute --incremental > unstashed_build.log & type unstashed_build.log

%VECTORCAST_DIR%\vpython  vc_scripts\generate-results.py  D:\dev\PointOfSales_v2\2018_fast_test\2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%
set VECTORCAST_DIR=%ORIG_VCD%

::pause

set VECTORCAST_DIR=c:\vcast\2023
git clean -fxd
git reset --hard HEAD
xcopy \E \S \Y \I %VCAST_VC_SCRIPTS%\*.* vc_scripts > nul

%VECTORCAST_DIR%\manage -p 2018_fast_test --clean
if "%DO_SFP%" == "1" %VECTORCAST_DIR%\manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE
%VECTORCAST_DIR%\vpython  vc_scripts\getjobs.py  D:\dev\PointOfSales_v2\2018_fast_test\2018_fast_test.vcm --type
%VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute > unstashed_build.log & type unstashed_build.log 

if "%DO_IMPORT%" == "1" (
    %VECTORCAST_DIR%\manage -p 2018_fast_test --export-result temp_result.vcr
    %VECTORCAST_DIR%\manage -p 2018_fast_test --clean
    %VECTORCAST_DIR%\manage -p 2018_fast_test --import-result temp_result.vcr
) 

if "%DO_MODIFY%" == "1" echo void change_code(void) {} >> tutorial\c\manager.c
%VECTORCAST_DIR%\manage -p 2018_fast_test --build-execute --incremental > unstashed_build.log & type unstashed_build.log

%VECTORCAST_DIR%\vpython  vc_scripts\generate-results.py  D:\dev\PointOfSales_v2\2018_fast_test\2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%
set VECTORCAST_DIR=%ORIG_VCD%

::pause
