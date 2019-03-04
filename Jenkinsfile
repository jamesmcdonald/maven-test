pipeline {
    agent {
        docker {
            image 'maven'
        }
    }
    stages {
        stage('Diagnostics') {
            steps {
                sh 'env'
            }
        }
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
