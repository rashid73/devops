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
  }
}
