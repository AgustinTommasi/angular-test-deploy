pipeline {
  agent any
  stages {
    stage('Build image') {
      steps {
        sh 'docker.build("-t agustintommasi-test-app .")'
      }
    }

  }
}