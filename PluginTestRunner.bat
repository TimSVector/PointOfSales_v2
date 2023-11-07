git clean -fxd 
git reset --hard HEAD

if not exist "vc_scripts" mkdir vc_scripts 
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* vc_scripts > nul

set path=%PATH%;C:\vector\tools\gnat\2019\bin
set WORKSPACE=%CD%

%VECTORCAST_DIR%/manage --project PluginTesting.vcm --create-report=metrics --output=MetricsReport.html
%VECTORCAST_DIR%/manage --project PluginTesting.vcm --full-status=FullStatusReport.html
%VECTORCAST_DIR%/manage --project PluginTesting.vcm --build-execute --incremental --output PluginTesting.vcm_RebuildReport.html > build.log
%VECTORCAST_DIR%/vpython vc_scripts/generate-results.py PluginTesting.vcm --junit --buildlog build.log
