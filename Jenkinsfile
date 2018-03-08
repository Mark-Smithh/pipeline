node('DOCKER-AGENT') {
  stage('Build Image'){
    checkout scm

    def docker_username_repositiry = "mrdeveloper/pipeline"
    def tagName = env.BUILD_NUMBER
    def dockerCreds = 'dockerRegistry'

    docker.withRegistry('https://index.docker.io/v1/', dockerCreds) {
      def customImage = docker.build("${docker_username_repositiry}:${tagName}")

      customImage.inside {
          sh 'ls -al'
          sh 'pwd'
      }

      customImage.push('latest')
    }
  }
}
