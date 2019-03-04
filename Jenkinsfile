pipeline {
    agent none
    stages {
        stage('Diagnostics') {
            agent {
                docker {
                    image 'openjdk:11'
                }
            }
            environment {
                GITSHA = sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
            }
            steps {
                echo "Environment:"
                sh 'env'
            }
        }
        stage('Build') {
            agent {
                docker {
                    image 'maven'
                }
            }
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
