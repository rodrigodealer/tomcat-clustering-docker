# cat Dockerfile
FROM tomcat:7.0.94-jre7-alpine

ADD server.xml /usr/local/tomcat/conf
ADD pre.sh /usr/local/tomcat

WORKDIR /usr/local/tomcat

ENTRYPOINT bash ./pre.sh && catalina.sh run
