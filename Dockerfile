FROM maven:3.8.6-openjdk-11-slim AS build
RUN mkdir /home/app
copy . /home/app
RUN cd /home/app && mvn package
RUN cp /home/app/target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
