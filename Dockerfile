FROM openjdk:11
ADD /target/devops-integration.jar devops-integration.jar
EXPOSE 80
CMD ["java"]
