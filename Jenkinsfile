pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t new-server:latest docker/'
            }
        }

        stage('Run Application') {
            steps {
                sh 'docker run -d -p 5000:5000 new-server:latest'
            }
        }
    }
}
