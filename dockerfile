FROM centos

MAINTAINER neetish.cloud@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.34/bin/apache-tomcat-9.0.34.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.34/* /opt/tomcat/.
RUN yum -y install java-1.8.0-openjdk-devel
RUN java -version

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
