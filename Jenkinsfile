pipeline {
  agent any
  stages {
    stage('Test') {
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
