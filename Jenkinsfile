node {
    checkout scm
    appImage = docker.build("-t agustintommasi/test-app -f Dockerfile .")
    app = appImage.run(" -p 10123:80")
    appImage.push()
}