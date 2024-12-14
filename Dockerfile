# Use Eclipse Temurin JDK 17 for ARM (compatible with MacBook M1)
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the WAR file into the container
COPY target/MindHavenApp.war /app/MindHavenApp.war

# Expose the default application port
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/MindHavenApp.war"]
