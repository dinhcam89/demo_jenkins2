pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('docker')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t java_helloworld:latest .'
			}
		}

		// stage('Login') {

		// 	steps {
				
		// 		sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
		// 	}
		// }
		
		
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

				withDockerRegistry(credentialsId: 'docker', url: 'https://index.docker.io/v1/') {
					// some block
					sh 'docker push dinhcam89/java_helloworld'

				}	
			}
		
		}

	
	}

	// post {
	// 	always {
	// 		sh 'docker logout'
	// 	}
	// }

}