pushd ..\..\..\
call setenv.bat
popd

%VECTORCAST_DIR%\clicast -e PointOfSales_Coverage COUpling COMponents %VCAST_DEMO_SRC_BASE%
start /wait notepad PointOfSales_Coverage\coupling\components.xml
%VECTORCAST_DIR%\clicast -e PointOfSales_Coverage COUpling ANalyze
%VECTORCAST_DIR%\clicast -e PointOfSales_Coverage COUpling APply
