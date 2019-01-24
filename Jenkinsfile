pipeline {
    agent any
    stages {
        stage('Non-Parallel Stage') {
            steps {
                echo 'This stage will be executed first.'
            }
        }
        stage('Parallel Stage') {
            failFast true
            parallel {
                stage('VectorCAST_MinGW_C++/UnitTesting/ENV_DATABASE') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
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
                stage('VectorCAST_MinGW_C++/UnitTesting/ENV_ENCRYPT') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting -e ENV_ENCRYPT --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_ENCRYPT_rebuild.html
exit /b %ERRORLEVEL%
'''
                    }
                }
                stage('VectorCAST_MinGW_C++/UnitTesting/ENV_LINKED_LIST') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting -e ENV_LINKED_LIST --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_LINKED_LIST_rebuild.html
exit /b %ERRORLEVEL%
'''
                    }
                }
                stage('VectorCAST_MinGW_C++/UnitTesting/ENV_MANAGER') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting -e ENV_MANAGER --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_MANAGER_rebuild.html
exit /b %ERRORLEVEL%
'''
                    }
                }
                stage('VectorCAST_MinGW_C++/UnitTesting/ENV_MATRIX_MULTIPLY') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting -e ENV_MATRIX_MULTIPLY --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_MATRIX_MULTIPLY_rebuild.html
exit /b %ERRORLEVEL%
'''

                    }
                }
                stage('VectorCAST_MinGW_C++/UnitTesting/ENV_WAITING_LIST') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting -e ENV_WAITING_LIST --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_WAITING_LIST_rebuild.html
exit /b %ERRORLEVEL%
'''

                    }
                }
                stage('VectorCAST_MinGW_C++/UnitTesting/INTEGRATION_TESTING') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting -e INTEGRATION_TESTING --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_INTEGRATION_TESTING_rebuild.html
exit /b %ERRORLEVEL%
'''
                    }
                }

                stage('VectorCAST_MinGW_C++/UnitTesting_TrustZone/ENV_DATABASE') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting_TrustZone -e ENV_DATABASE --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_DATABASE_rebuild.html
exit /b %ERRORLEVEL%
'''
                    }
                }
                stage('VectorCAST_MinGW_C++/UnitTesting_TrustZone/ENV_ENCRYPT') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting_TrustZone -e ENV_ENCRYPT --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_ENCRYPT_rebuild.html
exit /b %ERRORLEVEL%
'''
                    }
                }
                stage('VectorCAST_MinGW_C++/UnitTesting_TrustZone/ENV_LINKED_LIST') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting_TrustZone -e ENV_LINKED_LIST --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_LINKED_LIST_rebuild.html
exit /b %ERRORLEVEL%
'''
                    }
                }
                stage('VectorCAST_MinGW_C++/UnitTesting_TrustZone/ENV_MANAGER') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting_TrustZone -e ENV_MANAGER --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_MANAGER_rebuild.html
exit /b %ERRORLEVEL%
'''
                    }
                }
                stage('VectorCAST_MinGW_C++/UnitTesting_TrustZone/ENV_MATRIX_MULTIPLY') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting_TrustZone -e ENV_MATRIX_MULTIPLY --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_MATRIX_MULTIPLY_rebuild.html
exit /b %ERRORLEVEL%
'''

                    }
                }
                stage('VectorCAST_MinGW_C++/UnitTesting_TrustZone/ENV_WAITING_LIST') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting_TrustZone -e ENV_WAITING_LIST --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_ENV_WAITING_LIST_rebuild.html
exit /b %ERRORLEVEL%
'''

                    }
                }
                stage('VectorCAST_MinGW_C++/UnitTesting_TrustZone/INTEGRATION_TESTING') {
                    agent {
                        label &quot;VectorCAST_MinGW_C++&quot;
                    }
                    steps {
                        git credentialsId: 'dc4cbd62-9ece-418e-b930-ee727a2ce31e', url: 'https://github.com/TimSVector/PointOfSales_v2.git'
                        bat '''
set VCAST_DEMO_SRC_BASE=%CD%\\CurrentRelease
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --force --release-locks
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --full-status
%VECTORCAST_DIR%/manage --project CurrentRelease/vcast-workarea/vc_manage/PointOfSales_Manage --level VectorCAST_MinGW_C++/UnitTesting_TrustZone -e INTEGRATION_TESTING --build-execute --incremental --output VectorCAST_MinGW_C++_UnitTesting_INTEGRATION_TESTING_rebuild.html
exit /b %ERRORLEVEL%
'''
                    }
                }
            }            
        }
    }
}