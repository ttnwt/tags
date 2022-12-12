# pull base image
#FROM tomcat:8-jre8
FROM tomcat
# maintainer
MAINTAINER "Tangko"
COPY ./target/tt.test.war /usr/local/tomcat/webapps
#CMD [“catalina.sh”, “run”]
