pipeline {
    agent any

    stages {
        stage('SCM Checkout') {
            steps {
                git branch: 'main', credentialsId: 'jk-gh-tk', url: 'https://github.com/Guilherme-Goldmann/meuapachepipe.git'
            }
        }
	stage('Build Docker Image') {
  	    steps {
        	sh 'docker build -t guigoldmann/apachejenkins:latest .'
    		}
	}

	stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8070:80 --name testeapache guigoldmann/apachejenkins:latest'
                }
        }


    }
}

