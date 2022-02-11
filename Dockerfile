FROM tomcat:jdk14-openjdk-oracle

RUN cp -Rp /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
COPY ./context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY ./context2.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
COPY ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml 
COPY ./webapp.war /usr/local/tomcat/webapps


EXPOSE 8080

