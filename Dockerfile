FROM tomcat:8
LABEL maintainer="Indu Anoop"
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
COPY /usr/local/tomcat/webapps.dist/ -R * ../webapps/ 
EXPOSE 8080
CMD ["catalina.sh","run"]
