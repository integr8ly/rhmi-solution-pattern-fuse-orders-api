FROM openjdk:8-jdk-alpine

EXPOSE 8080

USER 1001

COPY target/orders-internal-1.0-SNAPSHOT.jar application.jar

CMD java -jar /application.jar
