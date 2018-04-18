// "Jenkinsfile" to build images

node {
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
  
  stage('Docker pull') {
    // download image from the Docker Hub
    sh "docker pull bash"
  }
  
  stage('Docker image build') {
    // Try to build an image
    sh "docker build -t example ."
  }
}
