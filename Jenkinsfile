pipeline {
    agent any


    stage('Build Docker Image') {
      steps {
        script {
          docker.withRegistry('https://hub.docker.com/repository/docker/dinhcam89/java_helloworld/') {
            def image = docker.build('java_helloworld')
          }
        }
      }
    }

    stage('Docker Push'){
        steps{
            docker push dinhcam89/java_helloworld:latest
        }
    }
  }

  post {
    success {
      echo 'Pipeline completed successfully'
    }
    failure {
      echo 'Pipeline failed'
    }
  }
}