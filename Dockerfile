# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/futurespace.jar /app/

# Expose the port that your Spring Boot application will run on
EXPOSE 8080

# Define environment variable for the JAR file name
ENV JAR_FILE=futurespace.jar

# Run the JAR file
CMD ["sh", "-c", "java -jar $JAR_FILE"]
