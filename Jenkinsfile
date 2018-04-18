// "Jenkinsfile" to build images

node {
  stage('hostname ?') {
    // Make the output directory.
    sh "hostname"
  }
  
  stage('Docker release ?') {
    // Try to build a Docker image
    sh '''
      docker --version
    '''
  }
  
  stage('Docker image build') {
    // Try to build an image
    sh "docker build -t example ."
  }
}
