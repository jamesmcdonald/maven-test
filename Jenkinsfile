pipeline {
    agent none
    stages {
        stage('Diagnostics') {
            environment {
                GITSHA = sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
            }
            steps {
                echo "Environment:"
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
