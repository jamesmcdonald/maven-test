pipeline {
    agent none
    stages {
        stage('Diagnostics') {
            steps {
                def sha = sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
                echo "SHA: ${sha}"
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
