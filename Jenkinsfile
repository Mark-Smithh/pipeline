node('DOCKER-AGENT') {
  stage('Build Image'){
    checkout scm

    def customImage = docker.build("my-image:${env.BUILD_ID}")

    customImage.inside {
        sh 'ls -al'
        sh 'pwd'
    }

    customImage.push('mrdeveloper/pipeline:1.0')
  }
}
//docker pull mrdeveloper/pipeline
