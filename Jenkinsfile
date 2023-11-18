node {
    checkout scm

    def testImage = docker.build("my-image:${env.BUILD_ID}", "-f Dockerfile") 
    testImage.push()

  
    
}
