def appVersion = '1.0'
def buildNumber = env.BUILD_NUMBER
pipeline {
  agent none
    stages {
      stage('Node 7 Container') {
        agent {
            docker { image 'node:7-alpine' } //pull Container from docker hub
        }
        steps {
            sh 'node --version' //run this command inside Container
        }
      }
      stage('Maven 3.5.2 Container') {
        agent {
          docker {
            image 'maven:3.5.2' //pull Container from docker hub
          }
        }
        steps {
            sh 'mvn --version' //run this command inside Container
            sh "mvn clean install -f example-springboot-service/pom.xml -DAPP_VERSION=${appVersion} -DBUILD_NUMBER=${buildNumber}"//run this command inside Container
        }
      }
    }
}

//docker run -it --rm --name my-maven-project -v "$PWD":/usr/src/mymaven -w /usr/src/mymaven maven:3.3.9-jdk-8 mvn clean install
