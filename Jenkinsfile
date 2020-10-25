pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'docker build -t php-ci-test:pipeline .'
        sh 'docker run --rm -t php-ci-test:pipeline cat /app/report.xml > report.xml'
        junit 'report.xml'
      }
    }

    stage('Build') {
      steps {
        echo 'Building...'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying...'
      }
    }
  }
}
