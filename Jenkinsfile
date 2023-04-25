pipeline {
  agent {
    node {
      label 'slave'
    }

  }
  stages {
    stage('git-checkout') {
      steps {
        git(url: 'https://github.com/Ram8319/Devops-CICD.git', branch: 'main', credentialsId: 'git-token')
      }
    }

    stage('maven-build') {
      steps {
        sh 'mvn clean package'
      }
    }

    stage('docker-build-image') {
      steps {
        sh 'sudo docker build -t webapp .'
      }
    }

    stage('docker-push-image') {
      steps {
        sh 'sudo docker tag webapp:latest ram1docker/webapp'
        sh 'sudo docker push webapp:latest'
      }
    }

  }
}