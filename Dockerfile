FROM openjdk:17-jdk-slim

# copy jar files into a container
RUN mkdir /usr/local/spring-petclinic
COPY target/* /usr/local/spring-petclinic/

# execute application
CMD ["java", "-jar", "/usr/local/spring-petclinic/spring-petclinic-3.4.0-SNAPSHOT.jar"]
