node('DOCKER-AGENT'){
  checkout scm
  stage('Mark-Local-Sonar-Container') {
      // requires SonarQube Scanner 2.8+
      def scannerHome = tool 'SonarQube Scanner 2.8'
      withSonarQubeEnv('My SonarQube Server') {
        sh "${scannerHome}/bin/sonar-scanner"
      }
  }
}
