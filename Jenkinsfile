pipeline {
  agent any

  stages {
    stage("This is stage 1") {
      steps {
       sh 'chmod +x ${WORKSPACE}/build.sh'
      }
    }

    stage("This is stage 2") {
      steps {
        sh '${WORKSPACE}/build.sh'
      }
    }
  }
}
