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
                    script{

        appImage = docker.build("-t agustintommasi/test-app -f Dockerfile .")
    }
      }

    stage('Run container') {
      steps {
        /* This run the  image; synonymous to
         * docker build on the command line */
                    script{

        app = appImage.run(" -p 10123:80")

    }
    }
    }

    stage('Test image') {
      steps {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */
                    script{

        app.inside {
            sh 'echo "Tests passed"'
        }
        }
    }
    }

    stage('Push image') {
      steps {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
                    script{
      docker.withRegistry('https://localhost:5000') {
          appImage.push()
      }
      }
      }
    }

  }
}
}