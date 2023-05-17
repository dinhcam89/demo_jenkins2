# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Clone the Git repository that contains the Java file
RUN git clone https://github.com/dinhcam89/demo_jenkins2.git

# Set the working directory to the directory that contains the Java file
WORKDIR /app/demo_jenkins2

# Compile the Java file
RUN javac hello.java

# Set the default command to run the compiled Java class
CMD ["java", "hello"]