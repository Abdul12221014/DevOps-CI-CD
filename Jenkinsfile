pipeline {
    agent any

    environment {
        DOCKER_IMAGE_FRONTEND = "abdul12221014/frontend:latest"
        DOCKER_IMAGE_BACKEND = "abdul12221014/backend:latest"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Abdul12221014/DevOps-CI-CD.git'
            }
        }

        stage('Build Frontend Docker Image') {
            steps {
                script {
                    docker.build(DOCKER_IMAGE_FRONTEND, '-f Dockerfile .')
                }
            }
        }

        stage('Build Backend Docker Image') {
            steps {
                script {
                    docker.build(DOCKER_IMAGE_BACKEND, '-f backend/Dockerfile .')
                }
            }
        }

        stage('Push Docker Images') {
            steps {
                script {
                    docker.withRegistry('', 'dockerhub-credentials') { -> // Explicitly define a closure
                        docker.image(DOCKER_IMAGE_FRONTEND).push()
                        docker.image(DOCKER_IMAGE_BACKEND).push()
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Add your deployment steps (e.g., deploy to AWS/GCP/Render)
                }
            }
        }
    }
}
