FROM maven:3.9.4-eclipse-temurin-21 AS build

WORKDIR /app

COPY pom.xml ./
RUN mvn dependency:go-offline

COPY src ./src
RUN mvn clean package -DskipTests

RUN ls -la /app/target

FROM openjdk:21-slim

WORKDIR /app

COPY --from=build /app/target/springboot-user-service.jar /app/springboot-user-service.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/springboot-user-service.jar"]