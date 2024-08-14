git clean -fxd 
git reset --hard HEAD

if not exist "vc_scripts" mkdir vc_scripts 
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* vc_scripts > nul

set path=%PATH%;C:\vector\tools\gnat\2019\bin;%VECTORCAST_DIR%\mingw\bin
set WORKSPACE=%CD%
set VECTORCAST_DIR=c:\vcast\2023sp5

%VECTORCAST_DIR%/manage  --project PluginTesting.vcm --status
%VECTORCAST_DIR%/vpython D:\vector\github\FAE\FAE\utilities\parallel_build_execute\parallel_build_execute.py -p PluginTesting --jobs 6 --incremental
%VECTORCAST_DIR%/vpython vc_scripts\generate-results.py PluginTesting.vcm --junit --buildlog PluginTesting_build.log
%VECTORCAST_DIR%/vpython vc_scripts\incremental_build_report_aggregator.py PluginTesting  --rptfmt HTML
%VECTORCAST_DIR%/vpython vc_scripts\full_report_no_toc.py PluginTesting.vcm
%VECTORCAST_DIR%/manage  --project PluginTesting.vcm --create-report=aggregate --output=MetricsReport.html
%VECTORCAST_DIR%/manage  --project PluginTesting.vcm --full-status=FullStatusReport.html

dir *.html
dir *tmp

