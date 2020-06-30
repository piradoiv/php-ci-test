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
                sh 'ls'
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
