pipeline {
    agent {
        docker {
            label 'docker'
            image 'php:7.4.2'
        }
    }

    stages {
        stage('Test') {
            steps {
                sh 'ci/docker_install.sh'
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
