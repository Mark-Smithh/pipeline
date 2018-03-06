echo 'hello github'

// node('master'){
//   sh 'docker --version'
// }

pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'ls -al'
            }
        }
    }
}
