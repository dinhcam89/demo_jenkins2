pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t java_helloworld:latest .'
			}
		}

		stage('Login') {

			steps {
				
				sh "docker login -u $DOCKERHUB_CREDENTIALS_USR --password $DOCKERHUB_CREDENTIALS_PSW"
			}
		}
		
		
		// stage('View Images') {

		// 	steps {
		// 		sh 'docker images'
		// 	}
		// }
		
		stage('Docker Tag') {

			steps {
				sh 'docker tag java_helloworld dinhcam89/java_helloworld'
			}
		}

		stage('Push') {

    		// some block
			steps{		
				sh 'docker push dinhcam89/java_helloworld'					
			}
		
		}

	
	}

	// post {
	// 	always {
	// 		sh 'docker logout'
	// 	}
	// }

}