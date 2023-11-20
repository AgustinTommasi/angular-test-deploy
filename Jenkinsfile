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

        appImage = docker.build("-t agustintommasi/test-app -f Dockerfile .").run(" -p 10123:80")
      }
    }
      }

    stage('Run container') {
      steps {
        /* This run the  image; synonymous to
         * docker build on the command line */
    //                 script{

    //     app = appImage.run(" -p 10123:80")

    // }
    }
    }

    stage('Test image') {
      steps {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */
        //             script{

        // app.inside {
        //     sh 'echo "Tests passed"'
        // }
        // }
    }
    }
  }}
