FROM tomcat
LABEL "author"="prakash"
WORKDIR /usr/local/tomcat/webapps
COPY webapp/target/webapp.war .
