pipeline {
  agent any
  stages {
    stage('Stage 1') {
      steps {
        echo 'Running... SystemArt'
      }
    }

    stage('Stage 2 ') {
      steps {
        echo 'Running... SystemArt v2'
      }
    }

    stage('FUYLL') {
      steps {
        script {
          node {
            appImage = docker.build("-t agustintommasi/test-app -f Dockerfile .")
            app = appImage.run(" -p 10123:80")
            appImage.push()
          }
        }

      }
    }

  }
}