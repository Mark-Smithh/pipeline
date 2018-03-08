node('DOCKER-AGENT') {
  stage('Build Image'){
    checkout scm

    def customImage = docker.build("mrdeveloper:${env.BUILD_ID}")

    customImage.inside {
        sh 'ls -al'
        sh 'pwd'
    }

    customImage.push('latest')
  }
}
//docker pull mrdeveloper/pipeline
