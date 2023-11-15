pipeline {
  agent any
  stages {
    stage('Pre-Stage') {
      steps {
        echo 'Running... SystemArt'
      }
    }

    stage('Full Stage') {
      steps {
        echo 'Running... SystemArt v2'
        script{
          appImage = docker.build("-t agustintommasi/test-app -f Dockerfile .")
          app = appImage.run(" -p 10123:80")
          app.inside {
                sh 'echo "Tests passed"'
            }
          docker.withRegistry('https://localhost:5000') {
              appImage.push()
          }
        }
      }
    }
  }
}
