FROM openjdk:11-jre-slim
WORKDIR /app
COPY target/maven.example-1.0-SNAPSHOT.war /app/app.war
EXPOSE 8000
CMD ["java", "-jar", "app.war"]
