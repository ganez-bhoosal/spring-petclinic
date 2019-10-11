FROM maven:3.5.2-jdk-8
MAINTAINER Ganesh
WORKDIR /app
EXPOSE 8080
RUN git clone https://github.com/ganez-bhoosal/spring-petclinic.git &&\
    cd spring-petclinic && \
    mvn install
ENTRYPOINT ["java", "-jar", "/app/spring-petclinic/target/spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar"]
