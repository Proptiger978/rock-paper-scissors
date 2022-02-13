FROM tomcat
LABEL "author"="prakash"
WORKDIR /usr/local/tomcat/webapps

COPY /target/roshambo-1.0-SNAPSHOT.jar /
