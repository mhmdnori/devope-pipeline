pipeline{
    agent any
    stages{
        stage('Build'){
            steps {
                sh "$PWD/scripts/build.sh"
            }
        }
        stage('test'){
            steps {
                sh "$PWD/scripts/test.sh"
            }
        }
        stage('deploy'){
            steps {
                sh "$PWD/scripts/deploy.sh"
            }
        }
    }
}