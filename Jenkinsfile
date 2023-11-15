pipeline {
    agent any
    stages {
        stage("Build")
        {
            steps
            {
                script {
                        echo "INFO: Building Stage"
                        sh "docker build -t agustintommasi-angular.test ."
                        echo "INFO: Build Stage"
                    }
            }
        }

        stage("Deploy")
        {
            steps
            {
                script {
                            echo "INFO: Deploying Stage"
                            sh "docker run --restart always -p:10123:80 -d --name angular.test agustintommasi-angular.test"
                            echo "INFO: Deploy Stage"
                    }
            }
        }
    }
}