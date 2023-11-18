node {
    checkout scm

    docker.withServer('tcp://docker:2375', 'swarm-certs') {
        docker.image('mysql:5').withRun('-p 3306:3306') {
            /* do things */
        }
    }
}
