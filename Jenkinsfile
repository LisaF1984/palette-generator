pipeline {
    agent any
     stages {
         stage('install dependencies') {
            steps {
                sh 'bash scripts/install.sh'
            }
         }
        stage('Test') {
            steps {
                sh 'bash scripts/test.sh'
            }
        }
        stage('deploy') {
            steps {
                sh 'ssh 18.134.130.28 git clone https://github.com/LisaF1984/palette-generator.git || true'
                sh 'ssh 18.134.130.28 bash palette-generator/scripts/deploy.sh'
                sh '(((ssh 18.134.130.94 > bash scripts/deploy.sh)))'
            }
        }
     }
            post {
        always {
            junit 'junit.xml'
            cobertura coberturaReportFile: 'coverage.xml', failNoReports: false
        }

            }
     

}