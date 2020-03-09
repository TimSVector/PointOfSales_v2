if not exist "vc_scripts" mkdir vc_scripts 
xcopy /S /Q /Y C:\Users\vaprti\vector\github\vectorcast-execution-plugin-tms-pipeline\src\main\resources\scripts\*.* vc_scripts
set path=%env.Path%;C:\vector\tools\gnat\2019\bin
set WORKSPACE=%system.teamcity.build.workingDir%

%env.VECTORCAST_DIR%/manage --project %1 --build-execute --incremental --output RebuildReport.html > build.log
%env.VECTORCAST_DIR%/manage --project %1 --create-report=metrics --output=MetricsReport.html
%env.VECTORCAST_DIR%/manage --project %1 --full-status FullStatusReport.html

%env.VECTORCAST_DIR%/vpython vc_scripts/generate-results.py %1 --junit --buildlog build.log
%env.VECTORCAST_DIR%/vpython vc_scripts/generate-results.py %1 --final