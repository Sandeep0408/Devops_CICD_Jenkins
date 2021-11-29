node('master') {
    stage('checkout') {
        git 'https://github.com/Sandeep0408/devops_cicd_jenkins.git'
    }
    stage('build') {
        sh 'mvn install'
    }
    stage('review_job') {
        sh 'mvn -P metrics pmd:pmd'
    }
    stage('Unit Testing') {
      junit '**/target/surefire-reports/TEST-*.xml'
      archive 'target/*.jar'
    }
    stage('Build_image') {
      app = docker.build("sandeepkumar0408/docker_jenkins_cicd_devopscapstone") 
    }
    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'Dockerhub') {
            app.push("latest")    
        }
    }
}    