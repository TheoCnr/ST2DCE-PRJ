pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    // Checkout the source code from Git
                    git 'https://github.com/efrei2023/ST2DCE-PRJ.git'
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    // Build the Go application
                    sh 'go build -o app'
                }
            }
        }

        stage('Deploy to Docker') {
            steps {
                script {
                    // Build Docker image
                    sh 'docker build -t devops_app .'

                    // Run Docker container
                    sh 'docker run -p 8080:8080 devops_app'
                }
            }
        }
    }
}
