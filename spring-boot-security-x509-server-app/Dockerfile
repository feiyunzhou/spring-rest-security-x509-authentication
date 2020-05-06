FROM openjdk:8-jre AS build
ADD target/spring-boot-security-x509-server-app-0.0.1-SNAPSHOT.jar x509serv.jar
ADD /src/main/resources/dev.liftme.club dev.liftme.club
ADD /src/main/resources/truststore.jks truststore.jks
EXPOSE 8443
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Xmx1024M", "-jar","/x509serv.jar"]

# TBD follow yggdrasil project, create docker file use scratch