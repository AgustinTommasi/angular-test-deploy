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
    stage('Build image') {
      steps {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
        docker.build("-t agustintommasi/test-app -f Dockerfile .")
    }
      }

    }
  }