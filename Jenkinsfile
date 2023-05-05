pipeline{

	agent any


	stages {

		stage('Build') {

			steps {
				sh 'docker build -t java_helloworld:latest .'
			}
		}

		
	
		stage('Docker Push') {

			steps {
				// This step should not normally be used in your script. Consult the inline help for details.
				withDockerRegistry(credentialsId: 'dockerhub', url: 'ttps://index.docker.io/v1/)') {
					// some block
					sh 'docker build -t java_helloworld:latest .'
					sh 'docker push dinhcam89/java_helloworld'
				}
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}