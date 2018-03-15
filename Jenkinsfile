def appVersion = '1.0'
def buildNumber = env.BUILD_NUMBER
def pomFileLocation = 'example-springboot-service/pom.xml'
def mavenGoals = 'clean install'
def dockerImageName = 'maven:3.5.2'
//dockerImageName WILL BE PULLED FROM DOCKERHUB AND BUILD COMMANDS WILL BE RUN IN IT

node('DOCKER-AGENT'){
  stage('Maven Build'){
    checkout scm
    sh 'ls -al'
    sh "docker run --rm --name my-maven-project -v ${pwd()}:/usr/src/mymaven -w /usr/src/mymaven ${dockerImageName} mvn -f ${pomFileLocation} -DAPP_VERSION=${appVersion} -DBUILD_NUMBER=${buildNumber} ${mavenGoals}"
  }
}

/*
# --rm will automatically remove the container when it exits

# -v /c/Users/msmith391/documents/docker/dockerFileBuild_Manual:/usr/src/mymaven bash
# -v ABOVE WILL MAKE CONTENTS OF /c/Users/msmith391/documents/docker/dockerFileBuild_Manual AVAILABLE IN THE CONTAINER AT /usr/src/mymaven

#-w /usr/src/mymaven
# -w ABOVE MAKES CONTAINER USE /usr/src/mymaven AS THE ROOT.  SO example-springboot-service/pom.xml IS LOOKED FOR AT /usr/src/mymaven/example-springboot-service/pom.xml

#AFTER BUILD TARGET DIRECOTRY WLLL BE AVAIALBLE ON BUILD AGENT IN THE TARGET DIRECOTRY

#-v <local path>:<mount path in container>
*/
