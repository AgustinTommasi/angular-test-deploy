pipeline {
  agent {
    docker {
      args 'npm install'
      image 'node:latest'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'npm start'
      }
    }

  }
}