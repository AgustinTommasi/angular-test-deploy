pipeline {
  agent any
  stages {
    stage('Build Docker Image') {
      steps {
        script {
          docker.build(DOCKER_IMAGE, '-f Dockerfile .')
        }

      }
    }

    stage('Deploy Docker Container') {
      steps {
        script {
          docker.image(DOCKER_IMAGE).inside('-d --name $CONTAINER_NAME -p 10123:80')
        }

      }
    }

  }
  environment {
    CONTAINER_NAME = 'angular-test'
    DOCKER_IMAGE = 'agustintommasi-angular-test'
  }
}