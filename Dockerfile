FROM openjdk:17
EXPOSE 8080
ADD target/springboot-image-github-actions.jar springboot-image-github-actions.jar
ENTRYPOINT ["java", "-jar", "/springboot-image-github-actions.jar"]