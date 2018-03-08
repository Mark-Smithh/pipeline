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
            sh 'maven --version'
        }
      }
    }
}
