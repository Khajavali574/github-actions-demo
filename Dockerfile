
FROM openjdk:17
RUN mvn clean install
COPY target/github-actions-demo.jar github-actions-demo.jar
EXPOSE 8080:8080
ENTRYPOINT ["java","-jar","github-actions-demo.jar"]