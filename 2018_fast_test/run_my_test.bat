@echo on
setlocal enabledelayedexpansion

rem === Default list of VectorCAST versions ===
set "VC_LIST=2018sp5 2019sp6 2020sp7 2021sp8 2022sp8 2023sp5 2024sp6 2025sp4"

rem === Allow command line override (example: run.bat 2024sp6) ===
if not "%~1"=="" set "VC_LIST=%~1"

set "BASE_PATH=%PATH%"

for %%V in (%VC_LIST%) do (

    set "VECTORCAST_DIR=C:\vcast\%%V"
    set "PATH=!VECTORCAST_DIR!;!BASE_PATH!"

    git clean -fxd
    git checkout HEAD 2018_fast_test.vcm tutorial\c\manager.c

    ::xcopy /E /S /Y /I D:\vector\github\vc_scripts_submodule\*.* %~dp0..\vc_scripts > nul 2>&1
    xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* %~dp0..\vc_scripts > nul 2>&1

    manage -p 2018_fast_test --status 
    manage -p 2018_fast_test --config=COVERAGE_TYPE=STATEMENT+BRANCH
    manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE 

    vpython %~dp0..\vc_scripts\getjobs.py 2018_fast_test.vcm --type
    if errorlevel 1 goto END

    vpython %~dp0..\vc_scripts\vcast_exec.py 2018_fast_test.vcm --build-execute --jobs=6
    if errorlevel 1 goto END

    copy 2018_fast_test_build.log %~dp0..\vc_scripts\unstashed_build.log

    manage -p 2018_fast_test --export-result temp_result.vcr
    manage -p 2018_fast_test --clean  
    manage -p 2018_fast_test --import-result temp_result.vcr
    manage -p 2018_fast_test --status

    copy /y tutorial\c\manager_update.c tutorial\c\manager.c  

    vpython %~dp0..\vc_scripts\vcast_exec.py 2018_fast_test.vcm --build-execute  --incremental --jobs=6
    if errorlevel 1 goto END

    copy 2018_fast_test_build.log %~dp0..\vc_scripts\unstashed_build.log

    vpython %~dp0..\vc_scripts\vcast_exec.py 2018_fast_test.vcm --junit --cobertura_extended --lcov --aggregate --metrics --fullstatus
    
    if errorlevel 1 goto END

    IF EXIST "%~dp0..\vc_scripts\generate-results.py" (
        vpython %~dp0..\vc_scripts\generate-results.py 2018_fast_test.vcm --wait_time 30 --wait_loops 1 --buildlog %~dp0..\vc_scripts\unstashed_build.log --print_exc   
    ) ELSE (
        vpython %~dp0..\vc_scripts\generate_results.py 2018_fast_test.vcm 
    )

    if errorlevel 1 goto END
    
    IF EXIST "%~dp0..\vc_scripts\parallel_full_reports.py" (
        vpython %~dp0..\vc_scripts\parallel_full_reports.py 2018_fast_test.vcm --jobs max
    )
)

:END

endlocal