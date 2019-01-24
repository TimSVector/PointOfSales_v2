pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        bat'''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting -e ENV_DATABASE --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_DATABASE_rebuild.html
exit /b %ERRORLEVEL%
'''
      }
    }
  }
}