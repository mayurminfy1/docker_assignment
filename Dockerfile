# Use official lightweight JDK base image
FROM openjdk:21-slim

# Set working directory in container
WORKDIR /app

# Copy JAR file into container
COPY target/deploy-0.0.1-SNAPSHOT.jar app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
