pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        bat(script: 'Build App', returnStatus: true, returnStdout: true)
      }
    }
  }
}