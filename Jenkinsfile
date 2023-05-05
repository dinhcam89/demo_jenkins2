pipeline{

	agent any

	// environment {
	// 	DOCKERHUB_CREDENTIALS=credentials('dockerhub2')
	// }

	stages {

		// stage('Build') {

		// 	steps {
		// 		sh 'docker build -t java_helloworld:latest .'
		// 	}
		// }

		// stage('Login') {

		// 	steps {
				
		// 		sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
		// 	}
		// }
		
		// This step should not normally be used in your script. Consult the inline help for details.
		stage('View Images') {

			steps {
				// This step should not normally be used in your script. Consult the inline help for details.
				withDockerRegistry(credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/)') {
					// some block
					sh 'docker build -t java_helloworld:latest .'
					sh 'docker push dinhcam89/java_helloworld'
				}
			}
		}
		
		// stage('Docker Tag') {

		// 	steps {
		// 		sh 'docker tag java_helloworld dinhcam89/java_helloworld'
		// 	}
		// }

		// stage('Push') {

		// 	//withDockerRegistry(credentialsId: 'dockerhub2', url: 'docker push dinhcam89/java_helloworld') {
    	// 	// some block
		// 	steps{
		// 		sh 'docker push dinhcam89/java_helloworld'
		// 	}
		// }
		

	}

	// post {
	// 	always {
	// 		sh 'docker logout'
	// 	}
	// }

}