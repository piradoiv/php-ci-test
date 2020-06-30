pipeline {
  agent any
  stages {
    stage('Test') {
      agent {
        docker {
          image 'php:7.4.2'
        }

      }
      steps {
        sh 'ls'
        sh 'sudo ci/docker_install.sh'
        sh 'php composer.phar install'
        sh 'php vendor/bin/phpunit --log-junit report.xml tests'
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