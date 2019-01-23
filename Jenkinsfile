pipeline {
    agent any
    stages {
        stage('Build/Execute Stage') {
            failFast true
            parallel {
                stage('VectorCAST_MinGW_C++/UnitTesting/ENV_DATABASE') {
                    agent {
                        label "VectorCAST_MinGW_C++"
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat returnStdout: true, script:  '''
set WORKSPACE=.
xcopy /I /E "C:/Program Files (x86)/Jenkins/workspace/git-demo-PointOfSales.vcast.multi/vc_scripts" vc_scripts
set VCAST_DEMO_SRC_BASE=%WORKSPACE%//CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting -e ENV_DATABASE --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_DATABASE_rebuild.html
%VECTORCAST_DIR%/vpython vc_scripts/copy_build_dir.py   "CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage.vcm"  VectorCAST_MinGW_C++/UnitTesting PoST.Pipeline_VectorCAST_MinGW_C++_UnitTesting_ENV_DATABASE ENV_DATABASE
%VECTORCAST_DIR%/vpython vc_scripts/generate-results.py "CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage.vcm" --level VectorCAST_MinGW_C++/UnitTesting -e ENV_DATABASE 

exit /b %ERRORLEVEL%
'''

                        stash includes: '**/*_rebuild*,execution/*.html, management/*.html, xml_data/**, *_build.tar', name: 'pipeline-build-copy-stash-stage1'

                    }
                }
            }            
        }
        stage('Generate Overall Reports') {
            steps {
                unstash 'pipeline-build-copy-stash-stage1'
                bat returnStdout: true, script:  '''

set VCAST_RPTS_PRETTY_PRINT_HTML=FALSE
%VECTORCAST_DIR%/vpython %WORKSPACE%/vc_scripts/extract_build_dir.py
%VECTORCAST_DIR%/vpython %WORKSPACE%/vc_scripts/incremental_build_report_aggregator.py --rptfmt HTML
%VECTORCAST_DIR%/vpython %VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage.vcm --full-status=PointOfSales_Manage_full_report.html
%VECTORCAST_DIR%/vpython %VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage.vcm --full-status > PointOfSales_Manage_full_report.txt
%VECTORCAST_DIR%/vpython %VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage.vcm --create-report=aggregate   --output=PointOfSales_Manage_aggregate_report.html
%VECTORCAST_DIR%/vpython %VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage.vcm --create-report=metrics     --output=PointOfSales_Manage_metrics_report.html
%VECTORCAST_DIR%/vpython %VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage.vcm --create-report=environment --output=PointOfSales_Manage_environment_report.html
%VECTORCAST_DIR%/vpython %WORKSPACE%/vc_scripts/gen-combined-cov.py PointOfSales_Manage_aggregate_report.html
%VECTORCAST_DIR%/vpython %WORKSPACE%/vc_scripts/getTotals.py PointOfSales_Manage_full_report.txt
                '''
            }
        }
        
    }
}
}