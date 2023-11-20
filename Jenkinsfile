pipeline {
  agent any
  stages {
    stage('Build image') {
      steps {
        appImage = docker.build("-t agustintommasi/test-app -f Dockerfile .")
        app = appImage.run(" -p 10123:80")
      }
    }

  }
}