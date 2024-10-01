FROM openjdk:8
ADD /target/devops-integration.jar devops-integration.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
