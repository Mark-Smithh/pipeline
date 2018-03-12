node('DOCKER-AGENT'){
  checkout scm
  stage('Sonar') {
      // requires SonarQube Scanner 2.8+
      def scannerHome = tool 'SonarQube Scanner 2.8'
      withSonarQubeEnv('Mark-Local-Sonar-Container') {
        sh "${scannerHome}/bin/sonar-scanner"
      }
  }
}
