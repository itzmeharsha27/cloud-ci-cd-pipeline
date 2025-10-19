pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'yourusername/cloudapp'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git credentialsId: 'github-cred', url: 'https://github.com/your-username/cloud-ci-cd-pipeline.git'
            }
        }

        stage('Build App') {
            steps {
                sh 'npm install && npm run build'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Run App Locally') {
            steps {
                sh '''
                docker stop app || true
                docker rm app || true
                docker run -d -p 3000:3000 --name app $DOCKER_IMAGE
                '''
            }
        }
    }
}

