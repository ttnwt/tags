pipeline {
    agent any
    stages {
        stage('continuous download') {
            when {tag "v5.0"}
            steps {
                git branch: 'main', credentialsId: 'me', url: 'https://github.com/ttnwt/tags.git'
            }
        }
        stage('continuous build') {
            when {tag "v5.0"}
            steps {
                sh 'mvn package'
            }
        }
    }
}


























// node('master') 
// {
//     stage('Continuous Download')
//                    {
//                      git branch: 'feature', credentialsId: 'me', url: 'https://github.com/ttnwt/webapp.git'
//                    }
//     stage('Continuous build')
//                    {
//                     sh 'mvn package'
//                    }
// #    stage('Continuous deployment')
//                    {
// #                    deploy adapters: [tomcat8(credentialsId: 'qa', path: '', url: 'http://172.31.88.197:8080')], contextPath: 'qaenv', war: '**/*.war'
//  #                  }
//  #   stage('Continuous testing')
//  #                  {
//  #                   sh 'echo "testing has passed"'
//  #                  }
//  #    stage('Continuous delivery')
//  #                  {
//  #                   deploy adapters: [tomcat8(credentialsId: 'prodep', path: '', url: 'http://172.31.95.153:8080')], contextPath: 'catenv', war: '**/*.war'
// #                   }
// }
