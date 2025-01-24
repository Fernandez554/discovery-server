# Use the official OpenJDK 17 image as a base
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built jar from the target directory to the working directory
ARG JAR_FILE=target/discovery-server-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# Expose the port the app runs on
EXPOSE 8761

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]