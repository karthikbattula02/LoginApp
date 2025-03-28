pipeline {
    agent any

    tools {
        maven 'Maven'
        jdk 'JDK9'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/karthikbattula02/Jenkins.git
            }
        }
        
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                sh '''
                cp target/LoginApp.war /Users/kbattula/ksoftwares/apache-tomcat-10.1.39/webapps
                /path/to/tomcat/bin/shutdown.sh
                /path/to/tomcat/bin/startup.sh
                '''
            }
        }
    }
}
