# Use Maven with Java 17 (used by Jenkins plugin builds)
FROM maven:3.9.6-eclipse-temurin-17

# Set working directory
WORKDIR /kubernetes-plugin

# Copy the entire plugin source code into the container
COPY . .

# Run tests using Maven and jenkins-test-harness
CMD ["mvn", "test"]
