// "Jenkinsfile" to build images

node {
  stage('hostname') {
    // Make the output directory.
    sh "hostname"
  }
  
  stage('Docker') {
    // Try to build a Docker image
    sh '''
      docker --version
    '''
}
