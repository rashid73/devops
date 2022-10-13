#sh('./build.sh')
pipeline {
  agent any

  stages {
    stage("This is stage 1") {
      steps {
       sh( chomd +x build.sh)
      }
    }

    stage("This is stage 2") {
      steps {
        sh( ./build.sh)
      }
    }
  }
}
