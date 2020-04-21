FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN cd /opt
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.zip
RUN unzip apache-tomcat-9.0.33.zip
cd /opt/apache-tomcat-9.0.33
EXPOSE 8081
CMD /opt/apache-tomcat-9.0.33/bin/catalina.sh run
