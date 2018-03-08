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
      agent {
          docker { image 'node:7-alpine' }
      }
      stage('Node 7 Container') {
          steps {
              sh 'node --version'
          }
      }
    }
}
