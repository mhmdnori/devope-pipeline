pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                catchError(buildResult: 'FAILURE', stageResult: 'SUCCESS') {
                    sh "$PWD/scripts/build.sh"
                }
            }
        }
        stage('Test') {
            steps {
                catchError(buildResult: 'FAILURE', stageResult: 'SUCCESS') {
                    sh "$PWD/scripts/test.sh"
                }
            }
        }
        stage('Deploy') {
            steps {
                catchError(buildResult: 'FAILURE', stageResult: 'SUCCESS') {
                    sh "$PWD/scripts/deploy.sh"
                }
            }
        }
    }
}
