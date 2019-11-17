FROM openjdk:8-jdk-alpine

LABEL source="https://github.com/fiap-69aoj/netflix-configuration-server" \
      maintainer="flavioso16@gmail.com"

ADD ./target/configuration-server-0.0.1-SNAPSHOT.jar configuration-server.jar

EXPOSE 9092

ENTRYPOINT ["java","-jar", "-Dspring.profiles.active=prod", "/configuration-server.jar"]