pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        bat(script: 'buildManageEnvironment', returnStdout: true)
      }
    }
  }
}