pipeline{

	agent any

	environment {
		DOCKERHB_CREDENTIALS = credentials('dockerhub')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t java_helloworld:v1.2.2 .'
			}
		}

		stage('Check Docker') {
			steps {
				sh 'docker info'
				sh 'java hello.java'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHB_CREDENTIALS_PSW |echo $DOCKERHB_CREDENTIALS_USR | docker login -u $DOCKERHB_CREDENTIALS_USR -p $DOCKERHB_CREDENTIALS_PSW'	
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

	post {
		always {
			sh 'docker logout'
		}

		success{
			mail bcc: '', body: 'Build Succeed', cc: 'dinhcam1512@gmail.com', from: '', replyTo: '', subject: 'Build Action', to: 'dinhcam1512@gmail.com'
		}

		failure{
			mail bcc: '', body: 'Build Failed', cc: 'dinhcam1512@gmail.com', from: '', replyTo: '', subject: 'Build Action', to: 'dinhcam1512@gmail.com'
		}
	}

}