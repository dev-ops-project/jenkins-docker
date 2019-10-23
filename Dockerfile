From Jeniks
FROM jenkins/jenkins
USER root

RUN 
 groupadd -g 999 docker && \
 usermod -aG staff,docker jenkins

user jenkins
