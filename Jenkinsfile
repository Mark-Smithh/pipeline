node('DOCKER-AGENT') {
  stage('Build Image'){
    checkout scm

    docker.withRegistry('https://index.docker.io/v1/', 'dockerRegistry') {
      def customImage = docker.build("mrdeveloper/pipeline:${env.BUILD_NUMBER}")

      customImage.inside {
          sh 'ls -al'
          sh 'pwd'
      }

      def tagName = env.BUILD_NUMBER
      customImage.push(tagName)
    }
}
}
//docker pull mrdeveloper/pipeline
