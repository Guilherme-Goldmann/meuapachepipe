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
        	sh 'sudo docker build -t guigoldmann/apachejenkins:latest .'
    		}
	}
    }
}

