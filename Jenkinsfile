pipeline {
    agent Ubuntu_amit

      stages {
          stage('Git-Checkout') {
             steps {
                echo 'checking out from git-repo';
                git branch: 'main', url: 'https://github.com/amit-086/Webapp.git'
             }
          }
         stage('Build Image') {
            steps {
                sh """
                  docker build -t sample_image .
                  """
            }
         }
        stage('Run') {
            steps {
                sh """
                  docker run --rm sample_image
                  """
            }
        }
    }
}
