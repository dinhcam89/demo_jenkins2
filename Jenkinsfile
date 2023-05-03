pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub2')
	}

	stages {

		// stage('Build') {

		// 	steps {
		// 		sh 'docker build -t java_helloworld:latest .'
		// 	}
		// }

		stage('Login') {

			steps {
				withDockerRegistry(credentialsId: 'dockerhub2', url: 'https://index.docker.io/v1/') {
					// some block
					sh 'docker build -t java_helloworld:latest .'
					sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
					sh 'docker push dinhcam89/java_helloworld'
				}
				//sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}
		
		
		// stage('View Images') {

		// 	steps {
		// 		sh 'docker images'
		// 	}
		// }
		
		// stage('Docker Tag') {

		// 	steps {
		// 		sh 'docker tag java_helloworld dinhcam89/java_helloworld'
		// 	}
		// }

		// stage('Push') {

		// 	withDockerRegistry(credentialsId: 'dockerhub2', url: 'docker push dinhcam89/java_helloworld') {
    	// 	// some block
		// 	}
		// }
		

	}

	// post {
	// 	always {
	// 		sh 'docker logout'
	// 	}
	// }

}