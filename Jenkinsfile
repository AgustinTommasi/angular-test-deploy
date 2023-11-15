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
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        appImage = docker.build("agustintommasi/test-app")
    }

    stage('Run container') {
        /* This run the  image; synonymous to
         * docker build on the command line */

        app = appImage.run(" -p 10123:80")
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */

        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
      docker.withRegistry('https://localhost:5000') {
          appImage.push()
      }
    }

  }
}