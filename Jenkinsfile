pipeline{

    agent any
  
    tools{
      maven 'Maven 3.6.3'

    stages{
        stage('Build'){
            steps{
                echo 'this is the build job'
                sh 'mvn clean compile'
            }
        }
        stage('Test'){
            steps{
                echo 'Testing..'
                sh 'mvn test'
            }
        }
        stage('Package'){
            steps{
                echo 'Deploying...'
                sh 'mvn -DskipTests package'
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
            }
        }
    }
