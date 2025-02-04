FROM jenkins/jenkins:alpine
USER root
RUN apk add --no-cache curl bash
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN jenkins-plugin-cli --plugins $(cat /usr/share/jenkins/plugins.txt)

EXPOSE 8080
USER jenkins
