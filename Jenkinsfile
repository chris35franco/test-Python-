pipeline {
    agent any
    stages {
        stage('Descargar código') {
            steps {
                git 'https://github.com/chris35franco/test-Python-'
            }
        }
        stage('Instalar dependencias') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Pruebas') {
            steps {
                sh 'pytest'
            }
        }
    }
}
