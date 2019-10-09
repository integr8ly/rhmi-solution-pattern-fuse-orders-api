FROM openjdk:8-jdk-alpine

COPY target/orders-internal-1.0-SNAPSHOT.jar application.jar

CMD java -jar /application.jar