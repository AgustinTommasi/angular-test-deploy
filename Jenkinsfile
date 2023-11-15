pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }
    agent any

  }
  stages {
    stage('Example') {
      steps {
        echo 'Pass'
      }
    environment {
        // Define environment variables if needed
        CONTAINER_NAME = 'angular-test.v2'
        DOCKER_IMAGE = 'agustintommasi-angular-test'
    }

  }
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
                    // Run the Docker container
                    docker.image(DOCKER_IMAGE).withRun('-d --name $CONTAINER_NAME -p 10123:80')
                }
            }
        }
    }
}