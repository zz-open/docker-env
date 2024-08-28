ARG JDK_VERSION=8
FROM openjdk:${JDK_VERSION}-jdk-alpine

LABEL maintainer="zz <373045134@qq.com>"

WORKDIR /app

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]