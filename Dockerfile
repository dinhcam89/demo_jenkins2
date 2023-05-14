# Use an official Java runtime as a parent image
FROM openjdk:8-jdk-alpine

RUN apk update && apk add --no-cache git

WORKDIR /app

RUN git clone https://github.com/dinhcam89/demo_jenkins2.git

WORKDIR /app/demo_jenkins

RUN ./gradlew build

EXPOSE 5050

CMD ["java", "-jar", "./build/libs/your-app-name.jar"]
