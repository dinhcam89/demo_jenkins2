# Use an official Java runtime as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Compile the Java code
RUN javac hello.java

# Set the command to run the Java application
CMD ["java", "hello"]