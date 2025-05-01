pipeline {
    agent { label 'Python' }
    stages {
        stage('Descargar código') {
            steps {
                git branch: 'main', url: 'https://github.com/chris35franco/test-Python-'
            }
        }
        stage('Instalar dependencias') {
            steps {
                script {
                    sh 'python3 -m venv venv'
                    sh './venv/bin/pip install -r requirements.txt'
                }
            }
        }
        stage('Pruebas') {
            steps {
                script {
                    sh './venv/bin/pytest'
                }
            }
        }
    }
}


