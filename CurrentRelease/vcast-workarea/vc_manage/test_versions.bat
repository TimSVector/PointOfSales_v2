@echo on

set DO_SFP=0
set DO_IMPORT=0
set DO_MODIFY=0
set DO_MERGE=0
set DO_COPY_EXTRACT=0

echo %*

echo %* | findstr /i SFP    > nul
if "%errorlevel%"=="0" set DO_SFP=1
echo %* | findstr /i IMPORT    > nul
if "%errorlevel%"=="0" set DO_IMPORT=1
echo %* | findstr /i MODIFY    > nul
if "%errorlevel%"=="0" set DO_MODIFY=1
echo %* | findstr /i MERGE    > nul
if "%errorlevel%"=="0" set DO_MERGE=1
echo %* | findstr /i COPY_EXTRACT  > nul
if "%errorlevel%"=="0" set DO_COPY_EXTRACT=1

set workspace=%cd%

set ORIG_VCD=%VECTORCAST_DIR%

echo sfp: %DO_SFP% import: %DO_IMPORT% modify: %DO_MODIFY% merge: %DO_MERGE% copy-extract: %DO_COPY_EXTRACT%

if "%VC_VERSION%"=="" (

    call single_test.bat c:\vcast\2018sp5 %DO_SFP% %DO_IMPORT% %DO_MODIFY% %DO_MERGE%
    call single_test.bat c:\vcast\2019sp6 %DO_SFP% %DO_IMPORT% %DO_MODIFY% %DO_MERGE%
    call single_test.bat c:\vcast\2020sp7 %DO_SFP% %DO_IMPORT% %DO_MODIFY% %DO_MERGE%
    call single_test.bat c:\vcast\2023sp5 %DO_SFP% %DO_IMPORT% %DO_MODIFY% %DO_MERGE%
) else (
    call single_test.bat c:\vcast\%VC_VERSION% %DO_SFP% %DO_IMPORT% %DO_MODIFY% %DO_MERGE% %DO_COPY_EXTRACT%
)

set VECTORCAST_DIR=%ORIG_VCD%

:END

