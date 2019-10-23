FROM jenkinsci/jenkins
USER root
RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins && \
 groupadd -g 999 docker && \
 usermod -aG staff,docker jenkins

USER jenkins
ENV JAVA_OPTS="-Xmx8192m"




