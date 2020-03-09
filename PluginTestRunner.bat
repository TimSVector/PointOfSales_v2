if not exist "vc_scripts" mkdir vc_scripts 
xcopy /S /Q /Y C:\Users\vaprti\vector\github\vectorcast-execution-plugin-tms-pipeline\src\main\resources\scripts\*.* vc_scripts
set path=%PATH%;C:\vector\tools\gnat\2019\bin
set WORKSPACE=%CD%

set PROJECT=%1
set COMPILER=%2
set TESTSUITE=%3
set ENVIRONMENT=%4

if "%COMPILER%" == "" and  and "%ENVIRONMENT%" == "" (
    if "%TESTSUITE%" == "" (
        %VECTORCAST_DIR%/manage --project %PROJECT% --build-execute --incremental --output %PROJECT%_RebuildReport.html > build.log
    ) else (
        %VECTORCAST_DIR%/manage --project %PROJECT% --build-execute --incremental --level %COMPILER%/%TESTSUITE% --output %PROJECT%_%COMPILER%_%TESTSUITE%_RebuildReport.html > build.log
    )
) else (
   %VECTORCAST_DIR%/manage --project %PROJECT% --build-execute --incremental --level %COMPILER%/%TESTSUITE% --environment %ENVIRONMENT% --output %PROJECT%_%COMPILER%_%TESTSUITE%_%ENVIRONMENT%_RebuildReport.html > build.log
)
%VECTORCAST_DIR%/manage --project %PROJECT% --create-report=metrics --output=MetricsReport.html
%VECTORCAST_DIR%/manage --project %PROJECT% --full-status=FullStatusReport.html

%VECTORCAST_DIR%/vpython vc_scripts/generate-results.py %PROJECT% --junit --buildlog build.log
%VECTORCAST_DIR%/vpython vc_scripts/generate-results.py %PROJECT% --final