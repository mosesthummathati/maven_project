FROM tomcat:9.0-jdk11-openjdk-slim

# Set the working directory inside the container
WORKDIR /opt/tomcat/webapps/

# Copy the WAR file to the Tomcat webapps directory
COPY target/maven.example-1.0-SNAPSHOT.war .

# Expose the default Tomcat port
EXPOSE 8000

# Run Tomcat
CMD ["catalina.sh", "run"]
