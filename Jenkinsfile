pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('error') {
      steps {
        sh 'echo "HOLA"'
      }
    }

  }
  environment {
    DOCKER_IMAGE = 'agustintommasi-angular-test'
  }
}