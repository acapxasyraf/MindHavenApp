# Use a base image with Java 21
FROM eclipse-temurin:21-jdk-alpine

# Install wget for downloading Tomcat
RUN apk add --no-cache wget

# Download Apache Tomcat 10.1
RUN wget https://archive.apache.org/dist/tomcat/tomcat-10/v10.1.14/bin/apache-tomcat-10.1.14.tar.gz -O /tmp/tomcat.tar.gz && \
    mkdir /usr/local/tomcat && \
    tar -xvzf /tmp/tomcat.tar.gz -C /usr/local/tomcat --strip-components=1 && \
    rm /tmp/tomcat.tar.gz

# Remove default web applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Set the working directory
WORKDIR /usr/local/tomcat

# Copy the WAR file into the Tomcat webapps directory
COPY target/MindHavenApp.war webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["bin/catalina.sh", "run"]
