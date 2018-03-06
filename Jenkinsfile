//https://jenkins.io/doc/book/pipeline/syntax/#agent

// pipeline {
//     agent { dockerfile true } //RUN DOCKERFILE AT REPOSITORY ROOT
//     stages {
//         stage('Test') {
//             steps {
//                 sh 'ls -al'
//             }
//         }
//     }
// }

pipeline {
  agent{
    dockerfile {
        dir 'maven3-1-1' //RUN DOCKER FILE IN THIS FOLDER
        label 'DOCKER-AGENT' //USE THIS JENKINS AGENT
      }
    }
    stages {
        stage('Test') {
            steps {
                sh 'ls -al maven3-1-1'
                sh 'mvn --version'
            }
        }
    }
}
