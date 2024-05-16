set DO_SFP=0
set DO_IMPORT=0
set DO_MODIFY=0
set DO_MERGE=0

echo %*

echo %* | findstr /i SFP    > nul
if "%errorlevel%"=="0" set DO_SFP=1
echo %* | findstr /i IMPORT    > nul
if "%errorlevel%"=="0" set DO_IMPORT=1
echo %* | findstr /i MODIFY    > nul
if "%errorlevel%"=="0" set DO_MODIFY=1
echo %* | findstr /i MERGE    > nul
if "%errorlevel%"=="0" set DO_MERGE=1

set workspace=%cd%

set ORIG_VCD=%VECTORCAST_DIR%

@echo on latest vcast 2023 because of the sytem test and version
REM only do 
call single_test.bat c:\vcast\2023sp4 %DO_SFP% %DO_IMPORT% %DO_MODIFY% %DO_MERGE%

set VECTORCAST_DIR=%ORIG_VCD%

:END

