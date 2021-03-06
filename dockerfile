FROM openjdk:8-jdk-alpine
# Add Maintainer Info
LABEL maintainer="hanmanjunjur@gmail.com"

VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} /opt/one.jar
WORKDIR /opt
ENTRYPOINT ["java","-jar","one.jar"]