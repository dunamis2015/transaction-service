# Dockerfile for Transaction Service
FROM openjdk:17-jdk-slim

ENV SECRET_TOKEN=transactionSecret

ARG JAR_FILE=target/transaction-service-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8082

ENTRYPOINT ["java", "-jar", "/app.jar"]