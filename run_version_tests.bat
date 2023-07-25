

pushd 2018_fast_test

call test_versions.bat
call test_versions.bat                   DO_MERGE
call test_versions.bat            MODIFY         
call test_versions.bat            MODIFY DO_MERGE
call test_versions.bat     IMPORT
call test_versions.bat     IMPORT        DO_MERGE
call test_versions.bat     IMPORT MODIFY 
call test_versions.bat     IMPORT MODIFY DO_MERGE
call test_versions.bat SFP
call test_versions.bat SFP               DO_MERGE
call test_versions.bat SFP        MODIFY         
call test_versions.bat SFP        MODIFY DO_MERGE
call test_versions.bat SFP IMPORT
call test_versions.bat SFP IMPORT        DO_MERGE
call test_versions.bat SFP IMPORT MODIFY 
call test_versions.bat SFP IMPORT MODIFY DO_MERGE

popd
call setenv.bat
pushd CurrentRelease\vcast-workarea\vc_manage

call test_versions.bat
call test_versions.bat                   DO_MERGE
call test_versions.bat            MODIFY         
call test_versions.bat            MODIFY DO_MERGE
call test_versions.bat     IMPORT
call test_versions.bat     IMPORT        DO_MERGE
call test_versions.bat     IMPORT MODIFY 
call test_versions.bat     IMPORT MODIFY DO_MERGE
call test_versions.bat SFP
call test_versions.bat SFP               DO_MERGE
call test_versions.bat SFP        MODIFY         
call test_versions.bat SFP        MODIFY DO_MERGE
call test_versions.bat SFP IMPORT
call test_versions.bat SFP IMPORT        DO_MERGE
call test_versions.bat SFP IMPORT MODIFY 
call test_versions.bat SFP IMPORT MODIFY DO_MERGE

popd