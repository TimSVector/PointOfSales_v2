git clean -fxd
git checkout HEAD 2018_fast_test2018_fast_test.vcm 2018_fast_testtutorial\c\manager.c

xcopy /E /S /Y /I D:\vector\github\vectorcast-execution-plugin\src\main\resources\scripts\*.* d:\vector\github\PointOfSales_v2\vc_scripts
manage -p 2018_fast_test --clean 
manage -p 2018_fast_test --config=COVERAGE_TYPE=STATEMENT+BRANCH
manage -p 2018_fast_test --config VCAST_COVERAGE_SOURCE_FILE_PERSPECTIVE=TRUE 
vpython d:\vector\github\PointOfSales_v2\vc_scripts\getjobs.py 2018_fast_test.vcm --type

manage -p 2018_fast_test --export-result temp_result.vcr
manage -p 2018_fast_test --clean  
manage -p 2018_fast_test --import-result temp_result.vcr

copy /y tutorial\c\manager_update.c tutorial\c\manager.c  
vpython d:\vector\github\PointOfSales_v2\vc_scripts\vcast_exec.py 2018_fast_test 2018_fast_test.vcm --build-execute --jobs 6 --incremental

copy /y temp_result.vcr orig_temp_result.vcr

manage -p d:\vector\github\PointOfSales_v2\2018_fast_test\2018_fast_test --force --export-result temp_result.vcr  
manage -p d:\vector\github\PointOfSales_v2\2018_fast_test\2018_fast_test --remove-imported-result temp_result.vcr  
vpython d:\vector\github\PointOfSales_v2\vc_scripts\merge_vcr.py --orig=orig_temp_result.vcr  --new=temp_result.vcr  

vpython d:\vector\github\PointOfSales_v2\vc_scripts\merge_vcr.py --orig=d:\vector\github\PointOfSales_v2\2018_fast_test\orig_temp_result.vcr --new=d:\vector\github\PointOfSales_v2\2018_fast_test\temp_result.vcr  

manage -p 2018_fast_test --import-result temp_result.vcr

vpython d:\vector\github\PointOfSales_v2\vc_scripts\vcast_exec.py 2018_fast_test.vcm --jobs 6 --incremental   
