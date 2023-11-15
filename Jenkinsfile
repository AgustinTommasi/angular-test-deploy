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
    CONTAINER_NAME = 'angular-test'
    DOCKER_IMAGE = 'agustintommasi-angular-test'
  }
}