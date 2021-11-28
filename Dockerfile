FROM opnejdk:11
EXPOSE 8080
ADD target/docker_jenkins_cicd_devopscapstone.jar docker_jenkins_cicd_devopscapstone.jar
ENTRYPOINT [ "java","-jar","/docker_jenkins_cicd_devopscapstone.jar"] 
