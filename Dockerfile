
FROM openjdk:17
WORKDIR /app
COPY target/github-actions-demo.jar github-actions-demo.jar
EXPOSE 8282:8282
ENTRYPOINT ["java","-jar","github-actions-demo.jar"]