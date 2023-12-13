# Use a base image with OpenJDK and Gradle
FROM gradle:8.0.2-jdk17 AS build

# Set the working directory in the container
WORKDIR /app

# Copy Gradle files
COPY build.gradle settings.gradle /app/

# Copy the source code
COPY src /app/src

# Build the application
RUN gradle build

# Use a new base image for the final image
FROM openjdk:17

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build stage to the final image
COPY --from=build /app/build/libs/springboot-image-github-actions.jar /app/

# Expose the port the app runs on
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "springboot-image-github-actions.jar"]
