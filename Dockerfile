FROM maven:3-jdk-8
LABEL author='mani'
RUN git clone https://github.com/spring-projects/spring-petclinic.git && cd spring-petclinic && mvn clean package
COPY /target/spring-petclinic.jar /opt/spring-petclinic.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/opt/spring-petclinic.jar"]


