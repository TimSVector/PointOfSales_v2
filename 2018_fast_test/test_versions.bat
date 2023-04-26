@echo off
set DO_SFP=
set DO_IMPORT=

if "%1"=="SFP" (
set DO_SFP=1
)
if "%2"=="SFP" (
set DO_SFP=1
)
if "%1"=="IMPORT" (
set DO_IMPORT=1
)
if "%2"=="IMPORT" (
set DO_IMPORT=1
)

set workspace=%cd%

set ORIG_PATH=%PATH%

@echo on
set VECTORCAST_DIR=c:\vcast\2018sp5
set path=%VECTORCAST_DIR%;%PATH%
git clean -fxd
git reset --hard HEAD
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* vc_scripts

manage -p 2018_fast_test --clean

if "%DO_SFP%" == "1" manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE

manage -p 2018_fast_test --build-execute > unstashed_build.log 

if "%DO_IMPORT%" == "1" (
    manage -p 2018_fast_test --export-result temp_result.cvr
    manage -p 2018_fast_test --clean
    manage -p 2018_fast_test --import-result temp_result.cvr
    manage -p 2018_fast_test --build-execute --incremental > unstashed_build.log
)

%VECTORCAST_DIR%/vpython  vc_scripts/generate-results.py  D:/dev/PointOfSales_v2/2018_fast_test/2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%

pause


set VECTORCAST_DIR=c:\vcast\2019sp6
set path=%VECTORCAST_DIR%;%PATH%
git clean -fxd
git reset --hard HEAD
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* vc_scripts

manage -p 2018_fast_test --clean
if "%DO_SFP%" == "1" manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE
manage -p 2018_fast_test --build-execute > unstashed_build.log 

%VECTORCAST_DIR%/vpython  vc_scripts/generate-results.py  D:/dev/PointOfSales_v2/2018_fast_test/2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%

pause


set VECTORCAST_DIR=c:\vcast\2020sp7
set path=%VECTORCAST_DIR%;%PATH%
git clean -fxd
git reset --hard HEAD
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* vc_scripts

manage -p 2018_fast_test --clean
if "%DO_SFP%" == "1" manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE
manage -p 2018_fast_test --build-execute > unstashed_build.log 

if "%DO_IMPORT%" == "1" (
    manage -p 2018_fast_test --export-result temp_result.cvr
    manage -p 2018_fast_test --clean
    manage -p 2018_fast_test --import-result temp_result.cvr
    manage -p 2018_fast_test --build-execute --incremental > unstashed_build.log
) 

%VECTORCAST_DIR%/vpython  vc_scripts/generate-results.py  D:/dev/PointOfSales_v2/2018_fast_test/2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%

pause

set VECTORCAST_DIR=c:\vcast\2021sp8
set path=%VECTORCAST_DIR%;%PATH%
git clean -fxd
git reset --hard HEAD
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* vc_scripts

manage -p 2018_fast_test --clean
if "%DO_SFP%" == "1" manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE
manage -p 2018_fast_test --build-execute > unstashed_build.log 

if "%DO_IMPORT%" == "1" (
    manage -p 2018_fast_test --export-result temp_result.cvr
    manage -p 2018_fast_test --clean
    manage -p 2018_fast_test --import-result temp_result.cvr
    manage -p 2018_fast_test --build-execute --incremental > unstashed_build.log
) 

%VECTORCAST_DIR%/vpython  vc_scripts/generate-results.py  D:/dev/PointOfSales_v2/2018_fast_test/2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%

pause

set VECTORCAST_DIR=c:\vcast\2022sp8
set path=%VECTORCAST_DIR%;%PATH%
git clean -fxd
git reset --hard HEAD
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* vc_scripts

manage -p 2018_fast_test --clean
if "%DO_SFP%" == "1" manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE
manage -p 2018_fast_test --build-execute > unstashed_build.log 

if "%DO_IMPORT%" == "1" (
    manage -p 2018_fast_test --export-result temp_result.cvr
    manage -p 2018_fast_test --clean
    manage -p 2018_fast_test --import-result temp_result.cvr
    manage -p 2018_fast_test --build-execute --incremental > unstashed_build.log
) 

%VECTORCAST_DIR%/vpython  vc_scripts/generate-results.py  D:/dev/PointOfSales_v2/2018_fast_test/2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%

pause
