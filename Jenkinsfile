pipeline {
    agent any
    options{
	timestamps()
    }
    stages {
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
    post {
	always {
	   junit(testResults: 'target/surefire-reports/*xml', allowEmptyResults: true)
	}
    }
}

