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
                    // Ejecutar pruebas y generar reporte en formato JUnit
                    sh './venv/bin/pytest --junitxml=report.xml'
                }
            }
        }
    }
    post {
        always {
            // Publicar los resultados del reporte generado
            junit 'report.xml'
        }
    }
}



