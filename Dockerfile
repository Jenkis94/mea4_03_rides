# syntax=docker/dockerfile:1

FROM intellij-temurin:17-jdk-jammy

COPY .mvn/ .mvn
COPY mvnw pom.xml ./

RUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]