//https://jenkins.io/doc/book/pipeline/syntax/#agent
def appVersion = '1.0'
def buildNumber = env.BUILD_NUMBER
pipeline {
  agent none
    stages {
        stage('Dockerfile 1') {
            agent { dockerfile true } //USE DOCKERFILE AT REPOSITORY ROOT
            steps {
                sh 'ls -al' //COMMAND RUN IN CONTAINER
            }
        }
        stage('Maven Build') {
          agent{
            dockerfile {
                dir 'maven3-5-2' //USE DOCKER FILE IN THIS FOLDER
                label 'DOCKER-AGENT' //USE THIS JENKINS AGENT
              }
            }
            steps {
              sh 'mvn --version' //run this command inside Container
              sh "mvn clean install -f example-springboot-service/pom.xml -DAPP_VERSION=${appVersion} -DBUILD_NUMBER=${buildNumber}"//run this command inside Container
            }
        }
    }
}
