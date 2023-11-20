pipeline {
  agent any
  stages {
    stage('Build image') {
      steps {
        script{
          appImage = docker.build("-t agustintommasi/test-app -f Dockerfile .").run(" -p 10123:80")
        }
      }
    }
  }
}
