FROM openjdk:17
WORKDIR /app
COPY build.gradle settings.gradle /app/
COPY src /app/src
COPY --from=build /app/build/libs/springboot-image-github-actions.jar springboot-image-github-actions.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/springboot-image-github-actions.jar"]