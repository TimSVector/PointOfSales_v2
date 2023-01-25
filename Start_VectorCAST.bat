@echo off

rem set VECTORCAST_DIR=c:\vcast\2019sp2

call %~dp0\setenv.bat

rem set VCAST_REPORT_ENGINE=LEGACY

pushd %~dp0\CurrentRelease\vcast-workarea\vc_manage

start /b %VECTORCAST_DIR%\vcastqt -lc -e PointOfSales_Manage

popd