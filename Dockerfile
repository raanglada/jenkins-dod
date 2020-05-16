FROM jenkins/jenkins:lts

LABEL author="anglada.alex@gmail.com"

USER root

RUN apt update && \
 apt install -y python3-pip && \
 curl https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz | tar xvz -C /tmp/ && mv /tmp/docker/docker /usr/bin/docker  && \
 pip3 install docker-compose
