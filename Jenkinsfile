pipeline {
    agent any
    options{
	timestamps()
    }
    stages {
	stage('MVN_Compile'){
	   steps {
		sh './mvnw compile'
	   }
	}
	stage('MVN_Test'){
	   steps {
		sh './mvnw test'
	   }
	}
	stage('MVN_Package'){
	   steps {
		sh './mvnw package'
	   }
	}
        stage('Build_docker') {
	    steps {
		sh 'docker-compose build'
	    }
	}
	stage('Deploy') {
	    steps {
		sh 'docker-compose up -d'
	    }
	}
    }
}

