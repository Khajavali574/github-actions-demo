RUN EXPORT DOCKER_BUILDKIT=1
RUN EXPORT COMPOSE_DOCKER_CLI_BUILD=1
FROM openjdk:17
RUN mvn clean install
ADD target/github-actions-demo.jar github-actions-demo.jar
EXPOSE 8080:8080
ENTRYPOINT ["java","-jar","github-actions-demo.jar"]