

call %WORKSPACE%\setenv.bat > nul

git clean -fxd
git checkout HEAD 2018_fast_test\2018_fast_test.vcm
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* %WORKSPACE%\vc_scripts > nul

set ORIG_VCD=%VECTORCAST_DIR%

git clean -fxd
git checkout HEAD 2018_fast_test\2018_fast_test.vcm
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* %WORKSPACE%\vc_scripts > nul
set VECTORCAST_DIR=c:\vcast\2018sp5
%VECTORCAST_DIR%\manage -p 2018_fast_test\2018_fast_test.vcm --clean
%VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\vcast_exec.py 2018_fast_test\2018_fast_test.vcm --build-execute --incremental --jobs=6 --cobertura --junit --lcov --sonarqube --aggregate --metrics --fullstatus
pause 

git clean -fxd
git checkout HEAD 2018_fast_test\2018_fast_test.vcm
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* %WORKSPACE%\vc_scripts > nul
%VECTORCAST_DIR%\manage -p 2018_fast_test\2018_fast_test.vcm --clean
set VECTORCAST_DIR=c:\vcast\2019sp6
%VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\vcast_exec.py 2018_fast_test\2018_fast_test.vcm --build-execute --incremental --jobs=6 --cobertura --junit --lcov --sonarqube --aggregate --metrics --fullstatus
pause 

git clean -fxd
git checkout HEAD 2018_fast_test\2018_fast_test.vcm
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* %WORKSPACE%\vc_scripts > nul
%VECTORCAST_DIR%\manage -p 2018_fast_test\2018_fast_test.vcm --clean
set VECTORCAST_DIR=c:\vcast\2020sp7
%VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\vcast_exec.py 2018_fast_test\2018_fast_test.vcm --build-execute --incremental --jobs=6 --cobertura --junit --lcov --sonarqube --aggregate --metrics --fullstatus
pause 

git clean -fxd
git checkout HEAD 2018_fast_test\2018_fast_test.vcm
xcopy /E /S /Y /I %VCAST_VC_SCRIPTS%\*.* %WORKSPACE%\vc_scripts > nul
%VECTORCAST_DIR%\manage -p 2018_fast_test\2018_fast_test.vcm --clean
set VECTORCAST_DIR=c:\vcast\2024sp3
%VECTORCAST_DIR%\vpython %WORKSPACE%\vc_scripts\vcast_exec.py 2018_fast_test\2018_fast_test.vcm --build-execute --incremental --jobs=6 --cobertura --junit --lcov --sonarqube --aggregate --metrics --fullstatus
pause 
