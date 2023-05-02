FROM openjdk:8
ADD /target/devops-integration.jar devops-integration.jar
EXPOSE 80
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
