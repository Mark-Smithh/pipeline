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
  agent none
    stages {
      stage('Node 7 Container') {
        agent {
            docker { image 'node:7-alpine' }
        }
        steps {
            sh 'node --version'
        }
      }
      stage('Maven 3.5.2 Container') {
        agent {
          docker {
            image 'maven:3.5.2'
            args '-v /c/Users/msmith391/documents/Docker/Maven_Target:/usr/src/mymaven'
            sh 'ls -R'
          }
        }
        steps {
            sh 'mvn --version'
            sh 'mvn clean install -f example-springboot-service/pom.xml -DAPP_VERSION=1.0 -DBUILD_NUMBER=20'
        }
      }
    }
}

//docker run -it --rm --name my-maven-project -v "$PWD":/usr/src/mymaven -w /usr/src/mymaven maven:3.3.9-jdk-8 mvn clean install
