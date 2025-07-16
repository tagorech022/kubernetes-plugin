FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests

FROM eclipse-temurin:17-jdk
COPY --from=builder /app/target/*.hpi /plugin.hpi
CMD ["ls", "-lh", "/plugin.hpi"]
