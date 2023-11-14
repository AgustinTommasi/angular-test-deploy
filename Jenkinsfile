pipeline {
  agent {
    docker {
      args 'npm install'
      image 'node'
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