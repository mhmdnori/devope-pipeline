pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                catchError(buildResult: 'FAILURE', stageResult: 'SUCCESS') {
                    sh "scripts/build.sh"
                }
            }
        }
        stage('Test') {
            steps {
                catchError(buildResult: 'FAILURE', stageResult: 'SUCCESS') {
                    sh "scripts/test.sh"
                }
            }
        }
        stage('Deploy') {
            steps {
                catchError(buildResult: 'FAILURE', stageResult: 'SUCCESS') {
                    sh "scripts/deploy.sh"
                }
            }
        }
    }
}
