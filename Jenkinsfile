node('DOCKER-AGENT') {
    checkout scm

    def customImage = docker.build("my-image:${env.BUILD_ID}")

    customImage.inside {
        sh 'ls -al'
        sh 'whoami'
    }
}
