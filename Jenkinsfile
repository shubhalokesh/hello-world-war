pipeline {
    agent any
    environment {
        SONAR_TOKEN = 98a6275f0042a5ed6d227ff971509495bbd417dc
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('SonarCloud Analysis') {
            steps {
                withSonarQubeEnv('shubha') { // Replace 'SonarCloud' with your configured name
                    sh '''
                    sonar-scanner \
                      -Dsonar.projectKey=shubhalokesh_hello-world-war
                      -Dsonar.organization=shubha123
                      -Dsonar.sources=/var/lib/jenkins/workspace/sonarproject
                      -Dsonar.exclusions=**/*.java 
                      -Dsonar.host.url=https://sonarcloud.io \
                      -Dsonar.login=$SONAR_TOKEN
                    '''
                }
            }
        }
        stage('Quality Gate') {
            steps {
                script {
                    timeout(time: 1, unit: 'MINUTES') {
                        waitForQualityGate abortPipeline: true
                    }
                }
            }
        }
    }
}
