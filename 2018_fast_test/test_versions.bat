
set ORIG_PATH=%PATH%

set VECTORCAST_DIR=c:\vcast\2018sp5
set path=%VECTORCAST_DIR%;%PATH%

manage -p 2018_fast_test --clean
manage -p 2018_fast_test --build-execute > unstashed_build.log 

%VECTORCAST_DIR%/vpython  "d:\dev\jenkins\remote\workspace\2018_fast_test_vcast_pipeline"/vc_scripts/generate-results.py  D:/dev/PointOfSales_v2/2018_fast_test/2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%

pause


set VECTORCAST_DIR=c:\vcast\2019sp6
set path=%VECTORCAST_DIR%;%PATH%

manage -p 2018_fast_test --clean
manage -p 2018_fast_test --build-execute > unstashed_build.log 

%VECTORCAST_DIR%/vpython  "d:\dev\jenkins\remote\workspace\2018_fast_test_vcast_pipeline"/vc_scripts/generate-results.py  D:/dev/PointOfSales_v2/2018_fast_test/2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%

pause


set VECTORCAST_DIR=c:\vcast\2020sp7
set path=%VECTORCAST_DIR%;%PATH%

manage -p 2018_fast_test --clean
manage -p 2018_fast_test --build-execute > unstashed_build.log 

%VECTORCAST_DIR%/vpython  "d:\dev\jenkins\remote\workspace\2018_fast_test_vcast_pipeline"/vc_scripts/generate-results.py  D:/dev/PointOfSales_v2/2018_fast_test/2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%

pause

set VECTORCAST_DIR=c:\vcast\2021sp8
set path=%VECTORCAST_DIR%;%PATH%

manage -p 2018_fast_test --clean
manage -p 2018_fast_test --build-execute > unstashed_build.log 

%VECTORCAST_DIR%/vpython  "d:\dev\jenkins\remote\workspace\2018_fast_test_vcast_pipeline"/vc_scripts/generate-results.py  D:/dev/PointOfSales_v2/2018_fast_test/2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%

pause

set VECTORCAST_DIR=c:\vcast\2022sp8
set path=%VECTORCAST_DIR%;%PATH%

manage -p 2018_fast_test --clean
manage -p 2018_fast_test --build-execute > unstashed_build.log 

%VECTORCAST_DIR%/vpython  "d:\dev\jenkins\remote\workspace\2018_fast_test_vcast_pipeline"/vc_scripts/generate-results.py  D:/dev/PointOfSales_v2/2018_fast_test/2018_fast_test.vcm --wait_time 30 --wait_loops 1 --junit --buildlog unstashed_build.log --print_exc
dir xml_data
set PATH=%ORIG_PATH%

pause
