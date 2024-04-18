FROM tomcat:9-jdk16
RUN rm -rf /usr/local/tomcat/webapps/*
WORKDIR /app
COPY src ./src
COPY *.war /usr/local/tomcat/webapps/
COPY server.xml /usr/local/tomcat/conf/server.xml
CMD ["catalina.sh", "run"]