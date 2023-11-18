pipeline {
  agent any
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Pre-Stage') {
      steps {
        echo 'Running... SystemArt'
      }
    }
    stage('Full Stage') {
      steps {
        echo 'Running... SystemArt v2'
        sh 'docker build -t agustintommasi/test-app .'
      }
    }
    stage('3r') {
      steps {
        echo '3r'
      }
    }
  }
}
