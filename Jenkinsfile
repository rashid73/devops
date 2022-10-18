pipeline {
  agent any

  stages {
    stage("changing permission of the build file") {
      steps {
       sh 'chmod +x ${WORKSPACE}/build.sh'
      }
    }

    stage("running script to build and upload the image") {
      steps {
        sh '${WORKSPACE}/build.sh'
      }
    }
    stage('analyze') {
            steps {
              sh 'echo "docker.io/raxhid/server:$GIT_BRANCH-${BUILD_NUMBER} `pwd`/Dockerfile" > anchore_images'
                anchore name: 'anchore_images'
            }
  }
}
