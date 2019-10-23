FROM jenkinsci/jenkins:2.0-beta-1
USER root

RUN 
 groupadd -g 999 docker && \
 usermod -aG staff,docker jenkins

user jenkins
