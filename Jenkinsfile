pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'docker build -t php-ci-test:pipeline .'
        sh 'docker run --rm -it php-ci-test:pipeline cat /app/report.xml > report.xml'
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