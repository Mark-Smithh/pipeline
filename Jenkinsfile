// pipeline {
//     agent {
//         docker { image 'node:7-alpine' }
//     }
//     stages {
//         stage('Test') {
//             steps {
//                 sh 'node --version'
//             }
//         }
//     }
// }

pipeline {
  def code =
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
            //args "-v ${pwd}:/usr/src/mymaven -w /usr/src/mymaven"
          }
        }
        steps {
            sh 'mvn --version' //run this command inside Container
            sh 'ls /usr/src/mymaven'
            sh 'mvn clean install -f example-springboot-service/pom.xml -DAPP_VERSION=1.0 -DBUILD_NUMBER=20' //run this command inside Container
            sh 'ls example-springboot-service/target' //run this command inside Container
            sh 'ls -R' //run this command inside Container
        }
      }
    }
}

//docker run -it --rm --name my-maven-project -v "$PWD":/usr/src/mymaven -w /usr/src/mymaven maven:3.3.9-jdk-8 mvn clean install
