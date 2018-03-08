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
            docker { image 'maven:3.5.2' }
        }
        steps {
            sh 'mvn --version'
            sh 'mvn clean install -f example-springboot-service/pom.xml -DAPP_VERSION=1.0 -DBUILD_NUMBER=20'
        }
      }
    }
}
