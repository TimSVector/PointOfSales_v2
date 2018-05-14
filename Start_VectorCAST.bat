@echo off

call setenv.bat

if not exist CurrentRelease\vcast-workarea\vc_coverage\PointOfSales_Coverage (

echo **************************************************************************
echo Building Cover project from regression script - on happens the first time.
echo **************************************************************************
echo.
PING localhost -n 5 >NUL
pushd CurrentRelease\vcast-workarea\vc_coverage
call PointOfSales_Coverage.bat
popd

)

pushd %CD%\CurrentRelease\vcast-workarea\vc_manage

start /b %VECTORCAST_DIR%\vcastqt -lc -e PointOfSales_Manage

popd