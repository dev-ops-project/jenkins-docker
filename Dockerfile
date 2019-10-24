FROM jenkinsci/jenkins:2.0-beta-1
USER root

RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins
RUN mkdir  /tmp/download 
RUN curl -L https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_19.03.4_3-0_ubuntu-xenial_amd64.deb | tar -xz -C /tmp/download 
RUN rm -rf /tmp/download/docker/docker
RUN mv /tmp/download/docker/docker* /usr/local/bin/
RUN rm -rf /tmp/download
RUN groupadd -g 999 docker
RUN usermod -aG staff,docker jenkins
USER jenkins
ENV JAVA_OPTS="-Xmx8192m"




