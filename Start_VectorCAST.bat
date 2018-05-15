@echo off

call setenv.bat

pushd %CD%\CurrentRelease\vcast-workarea\vc_manage

start /b %VECTORCAST_DIR%\vcastqt -lc -e PointOfSales_Manage

popd