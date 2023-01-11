
REM set PATH=c:\vcast\mingw\bin;%PATH%
set VCAST_DEMO_SRC_BASE=%CD%\CurrentRelease

rem Set path to gnat compiler to default path
set path=%path%;d:\vector\tools\gnat\2021\bin

rem Set path to pclp64 to default path
set PATH=%PATH%;d:\Vector\tools\pc-lint-plus\1.4.1\windows;C:\VCAST\Vector.TestInsights.Cli.1.0.125+109

rem set VCAST_NUM_JOBS=8

REM goto :END
REM if EXECUTOR_NUMBER exists and hasn't already been appended to VECTORCAST_DIR...
REM if "%EXECUTOR_NUMBER%" == "" goto :END
REM if "%VECTORCAST_DIR:~-2,1%" == "@" goto :end
REM if "%VECTORCAST_DIR:~-2,1%" == "@" goto :end

REM set VECTORCAST_DIR=%VECTORCAST_DIR%@%EXECUTOR_NUMBER%


:END

echo %VECTORCAST_DIR%