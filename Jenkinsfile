pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Build image') {
      steps {
        sh '''docker.image(\'nginx\').withRun(\'-p 12349:80\') { c ->
                /* Wait until mysql service is up */
                sh \'echo "hello"\'
            } '''
      }
    }

  }
}