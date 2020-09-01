FROM ubuntu
MAINTAINER "siva"
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y vim
RUN apt-get install -y openjdk-8-jdk
RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.56/bin/apache-tomcat-8.5.56.tar.gz
RUN tar -zxvf apache-tomcat-8.5.56.tar.gz
RUN mv apache-tomcat-8.5.56 tomcat 
RUN mkdir -p /home/satya
RUN mv /tomcat /home/satya
COPY target/tendermanagement-0.0.1-SNAPSHOT.war /home/satya/tomcat/webapps
#EXPOSE 8080
ENTRYPOINT sh /home/satya/tomcat/bin/startup.sh && bash

