pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'docker build -t php-ci-test:pipeline .'
        sh '''docker create --name pipeline-output php-ci-test:pipeline
docker cp pipeline-output:/app/report.xml .
docker rm pipeline-output'''
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

    stage('XUnit') {
      steps {
        junit 'report.xml'
      }
    }

  }
}