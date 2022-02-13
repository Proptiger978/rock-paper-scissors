pipeline {
    agent any

    stages {
        
        stage('Git Clone') {
            steps {
                git 'https://github.com/amitbhoyar1988/rock-paper-scissors.git'
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
 {steps { sh 'docker build -t abhoyar9/pravin$BUILD_NUMBER' }}
 
 
stage('Docker Login') {
            steps {
                withCredentials ([string(credentialsId: 'dockerhub', variable: 'Password')]) {
                            sh 'docker login -u abhoyar9 -p ${Password}'

            }

        }}


 stage ('Push doccker image ')
  { steps { 
      sh 'docker push abhoyar9/pravin26$BUILD_NUMBER'
}}}
       
    } 
    

