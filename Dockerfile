FROM maven:3.8.7-amazoncorretto-11 as builder
WORKDIR /tmp/app
COPY . .
RUN mvn package

FROM amazoncorretto:11-alpine3.17 as runtime
WORKDIR /opt/amazoncorretto/app
COPY --from=builder tmp/app/target/testing-web-complete-0.0.1-SNAPSHOT.jar .
CMD ["java", "-jar", "./testing-web-complete-0.0.1-SNAPSHOT.jar"]
