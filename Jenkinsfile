pipeline {
    agent any

    stages {
        
        stage('Git Clone') {
            steps {
                git 'https://github.com/Proptiger978/rock-paper-scissors.git'
            }
        }
        
    stage('COMplie') {
            steps {
    withMaven(jdk: 'LocalJDK', maven: 'LocalMVN') {
    sh 'mvn clean package'
}
            }
        }
        
        
        stage ('Create docker image from Dockerfile ')
 {steps { sh 'docker build -t proptiger978/pravin$BUILD_NUMBER .' 
         { sh 'docker build -t proptiger978/pravin:latest .' }
        }
 }
 
 
stage('Docker Login') {
            steps {
                withCredentials ([string(credentialsId: 'dockerhub', variable: 'Password')]) {
                            sh 'docker login -u proptiger978 -p ${Password}'

            }

        }}


 stage ('Push doccker image ')
  { steps { 
       sh 'docker push proptiger978/pravin$BUILD_NUMBER'
       sh 'docker push proptiger978/pravin:latest'
}}}
       
    }
