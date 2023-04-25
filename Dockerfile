FROM nginx:latest
ADD /target/devops-integration.jar devops-integration.jar
EXPOSE 80