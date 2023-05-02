pipeline{
    agent{
        node ('Docker-node')
        stages{
            stage('git'){
                steps{
                    sh 'git branch: 'main', url: 'https://github.com/Ram8319/Devops-CICD.git''
                }
            }
        }
    }
}