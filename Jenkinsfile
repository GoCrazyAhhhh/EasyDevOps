pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Restore') {
            steps {
                dir('frontend') {
                    bat 'dotnet restore'
                }
            }
        }

        stage('Build') {
            steps {
                dir('frontend') {
                    bat 'dotnet build --configuration Release'
                }
            }
        }

        stage('Security Test') {
            steps {
                echo 'Running basic security check'
                bat 'dotnet list package --vulnerable || exit 0'
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: '**/bin/**', fingerprint: true
        }
    }
}
