// "Jenkinsfile" to build images

node {

  stage('Clone repository') {
        // clone our repository in our workspace
        checkout scm
    }
  
  stage('Git commit, branch ?') {
    // I would like to display some Git variables
    sh "echo branch=${env.GIT_BRANCH} latest commit=${env.GIT_COMMIT} ${env.GIT_URL}"
  }
  
  stage('hostname, id ?') {
    // Retreive hostname and more ...
    sh '''
      hostname
      id
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
