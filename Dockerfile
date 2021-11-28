<<<<<<< HEAD:DockerFile
FROM openjdk:11
=======
FROM openjdk:8
>>>>>>> 54a2c176fcae42053443ceaf513b7342ef66f685:Dockerfile
EXPOSE 8080
ADD target/docker_jenkins_cicd_devopscapstone.jar docker_jenkins_cicd_devopscapstone.jar
ENTRYPOINT [ "java","-jar","/docker_jenkins_cicd_devopscapstone.jar"] 
