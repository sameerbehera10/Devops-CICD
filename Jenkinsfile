pipeline {
  agent {
    node {
      label 'Docker-node'
    }

  }
  stages {
    stage('git') {
      steps {
        git(url: 'https://github.com/Ram8319/Devops-CICD.git', branch: 'main', credentialsId: 'git-token')
      }
    }

    stage('maven-build') {
      steps {
        sh 'mvn clean install'
      }
    }

    stage('docker build image') {
      steps {
        sh 'docker build -t javaapp -p /home/ubuntu/jenkins/workspace/Docker-deploy_main'
      }
    }

  }
}