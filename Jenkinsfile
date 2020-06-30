pipeline {
  agent any
  stages {
    stage('Test') {
      agent any
      steps {
        sh 'docker build .'
      }
    }

    stage('Build') {
      steps {
        echo 'Building..'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }

  }
}
