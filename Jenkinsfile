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
				
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
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

			//withDockerRegistry(credentialsId: 'dockerhub2', url: 'docker push dinhcam89/java_helloworld') {
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