FROM tomcat
LABEL "author"="prakash"
WORKDIR /usr/local/tomcat/webapps
COPY /var/lib/jenkins/workspace/d/target/roshambo-1.0-SNAPSHOT.jar .
