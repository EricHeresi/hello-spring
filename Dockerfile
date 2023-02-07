FROM amazoncorretto:11-alpine3.17
WORKDIR /opt/amazoncorretto/app
COPY ./target/testing-web-complete-0.0.1-SNAPSHOT.jar .
CMD ["java", "-jar", "./testing-web-complete-0.0.1-SNAPSHOT.jar"]
