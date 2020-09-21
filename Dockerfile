FROM bitnami/tomcat:9.0

LABEL name="Hello World App"
LABEL maintainer="nvinto@redhat.com"
LABEL version="1.0"

ENV TOMCAT_USERNAME=demo

COPY target/hello-openshift.war /opt/bitnami/tomcat/webapps_default