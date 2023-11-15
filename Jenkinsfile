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
        sh '''          
        docker ps

        docker images ls

'''
      }
    }

    stage('3r') {
      steps {
        echo '3r'
      }
    }

  }
}