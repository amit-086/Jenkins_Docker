pipeline {
    agent any {dockerfile true}

      stages {
          stage('Git-Checkout') {
             steps {
                echo 'checking out from git-repo';
                git branch: 'main', credentialsId: 'afc2f663-5f4b-4269-bf1f-d967fc72b960', url: 'https://github.com/amit-086/Jenkins_Docker.git'
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
