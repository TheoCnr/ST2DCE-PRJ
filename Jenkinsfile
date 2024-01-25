pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    // Checkout the source code from Git
                    git branch: 'main', url: 'https://github.com/TheoCnr/ST2DCE-PRJ.git'
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    dir('webapi') {
                        // Build the Go application
                        sh 'docker run --rm -v $PWD:/webapi -w /webapi golang:latest go build -o app'
                    }
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
