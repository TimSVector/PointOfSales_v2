pipeline {
  agent any
  stages {
    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting -e ENV_DATABASE --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_DATABASE_rebuild.html
exit /b %ERRORLEVEL%
'''
          }
        }
        stage('error') {
          steps {
            bat '\'\'\' set VCAST_DEMO_SRC_BASE=%CD%\\\\CurrentRelease %VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status %VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks %VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status %VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting -e ENV_MANAGER --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_MANAGER_rebuild.html exit /b %ERRORLEVEL% \'\'\''
          }
        }
        stage('Pull From Git') {
          steps {
            git(url: 'https://github.com/TimSVector/PointOfSales_v2.git', branch: 'master', credentialsId: 'TimSVector')
            bat '\'\'\' set VCAST_DEMO_SRC_BASE=%CD%\\\\CurrentRelease %VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status %VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks %VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status %VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting -e ENV_MANAGER --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_MANAGER_rebuild.html exit /b %ERRORLEVEL% \'\'\''
          }
        }
      }
    }
  }
}