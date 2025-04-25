pipeline {
    agent any
    stages {
        stage('Descargar código') {
            steps {
                git branch: 'main', url: 'https://github.com/chris35franco/test-Python-'
            }
        }
        stage('Instalar dependencias') {
            steps {
                script {
                    // Asegurarse de tener un entorno virtual o instalar globalmente
                    sh 'python3 -m venv venv'
                    sh './venv/bin/pip install -r requirements.txt' // Instala dependencias en el entorno virtual
                }
            }
        }
        stage('Pruebas') {
            steps {
                script {
                    // Ejecutar las pruebas dentro del entorno virtual
                    sh './venv/bin/pytest'
                }
            }
        }
    }
}

