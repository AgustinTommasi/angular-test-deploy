pipeline {
  agent any
  stages {
    stage('') {
      steps {
        sh '''docker build -t agustintommasi-angular.test .
docker run --restart always -p:10123:80 -d --name angular.test agustintommasi-angular.test
'''
      }
    }

  }
  environment {
    CONTAINER_NAME = 'angular-test'
    DOCKER_IMAGE = 'agustintommasi-angular-test'
  }
}