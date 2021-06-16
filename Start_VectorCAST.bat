@echo off

rem set VECTORCAST_DIR=c:\vcast\2019sp2

call setenv.bat

set VCAST_REPORT_ENGINE=LEGACY

pushd %CD%\CurrentRelease\vcast-workarea\vc_manage

start /b %VECTORCAST_DIR%\vcastqt -lc -e PointOfSales_Manage

popd