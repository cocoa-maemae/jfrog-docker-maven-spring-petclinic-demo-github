ARG BASE_IMAGE=eclipse-temurin:17-jdk-focal
FROM ${BASE_IMAGE}

# copy jar files into a container
RUN mkdir /usr/local/spring-petclinic
COPY target/*.jar /usr/local/spring-petclinic/

# execute application
CMD ["java", "-jar", "/usr/local/spring-petclinic/spring-petclinic-3.4.0-SNAPSHOT.jar"]
