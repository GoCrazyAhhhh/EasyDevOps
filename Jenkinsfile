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
                echo 'Restoring NuGet packages'
                bat 'dotnet restore'
            }
        }

        stage('Build') {
            steps {
                echo 'Building .NET frontend'
                bat 'dotnet build --configuration Release --no-restore'
            }
        }

        stage('Security Test') {
            steps {
                echo 'Running OWASP Dependency Check'
                bat '''
                C:\\tools\\dependency-check\\bin\\dependency-check.bat ^
                --scan . ^
                --format HTML ^
                --out dependency-check-report ^
                --noupdate
                '''
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'dependency-check-report/**', fingerprint: true
        }
    }
}
