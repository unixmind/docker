// "Jenkinsfile" to build images

node {

  stage('Clone repository') {
        // clone our repository in our workspace
        checkout scm
    }
  
  stage('hostname, id ?') {
    // Retreive hostname and more ...
    sh '''
      hostname
      id
    '''
  }
  
  stage('Docker release ?') {
    // Try to build a Docker image
    sh '''
      docker --version
    '''
  }
  
  stage('Docker pull images') {
    // download image from the Docker Hub
    sh '''
      docker pull graze/bats
      docker pull bash:latest
    '''
  }
  
  stage('Docker image build') {
    // Try to build an image
    sh "docker build -t example ."
  }
}
