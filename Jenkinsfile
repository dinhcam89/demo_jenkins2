pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t demo1:latest .'
			}
		}

		stage('Login') {

			steps {
                sh "docker login -u ${DOCKER_HUB_CREDENTIALS_USR} -p ${DOCKER_HUB_CREDENTIALS_PSW}"
			}
		}
		
		
		// stage('View Images') {

		// 	steps {
		// 		sh 'docker images'
		// 	}
		// }
		
		stage('Docker Tag') {

			steps {
				sh 'docker tag demo1:latest ddinhcam89/java_helloworld/demo1:latest'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push dinhcam89/java_helloworld'
			}
		}
		

	}

	post {
		always {
			sh 'docker logout'
		}
	}

}