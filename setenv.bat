
if "%WORKSPACE%"=="" set WORKSPACE=%~dp0

set SOFTCONSOLE_INSTALL=D:\vector\tools\microchip-riscv
set path=%SOFTCONSOLE_INSTALL%\renode\bin;%SOFTCONSOLE_INSTALL%\riscv-unknown-elf-gcc\bin;%path%
set path=D:\vector\tools\gcc-toolchain\arm-32b-13\bin;D:\vector\tools\gcc-toolchain\arm-64b-13\bin;c:\qemu-20240423;%path%

REM set PATH=c:\vcast\mingw\bin;%PATH%
set VCAST_DEMO_SRC_BASE=%~dp0CurrentRelease

rem Set path to gnat compiler to default path
rem set path=%path%;d:\vector\tools\gnat\2021\bin

rem Set path to pclp64 to default path
rem set PATH=%PATH%;d:\Vector\tools\pc-lint-plus\1.4.1\windows;C:\VCAST\Vector.TestInsights.Cli.1.0.125+109

set path=%VECTORCAST_DIR%\mingw\bin;%path%;D:\vector\tools\pc-lint-plus\2.2\pclp

set SQ_INSTALL_DIR=D:\vector\tools\sonarqube-10.2.1.78527\bin\windows-x86-64

set path=%SQ_INSTALL_DIR%\jdk-17.0.8.1\bin;%SQ_INSTALL_DIR%\build-wrapper-win-x86;%SQ_INSTALL_DIR%\sonar-scanner-5.0.1.3006-windows\bin;%PATH%

rem set VCAST_NUM_JOBS=8

REM goto :END
REM if EXECUTOR_NUMBER exists and hasn't already been appended to VECTORCAST_DIR...
REM if "%EXECUTOR_NUMBER%" == "" goto :END
REM if "%VECTORCAST_DIR:~-2,1%" == "@" goto :end
REM if "%VECTORCAST_DIR:~-2,1%" == "@" goto :end

REM set VECTORCAST_DIR=%VECTORCAST_DIR%@%EXECUTOR_NUMBER%

:END
