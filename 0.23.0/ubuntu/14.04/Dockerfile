FROM ubuntu:14.04

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && echo deb http://repos.mesosphere.io/ubuntu trusty main > /etc/apt/sources.list.d/mesosphere.list && apt-get update && apt-get -y install mesos=0.23.0-1.0.ubuntu1404

RUN apt-get install -y curl wget

# http://docs.docker.com/installation/ubuntulinux/
RUN wget -qO- https://get.docker.com/ | sh

CMD ["/usr/sbin/mesos-slave"]

ENV MESOS_WORK_DIR /tmp/mesos
ENV MESOS_CONTAINERIZERS docker,mesos

# https://mesosphere.github.io/marathon/docs/native-docker.html
ENV MESOS_EXECUTOR_REGISTRATION_TIMEOUT 5mins

VOLUME /tmp/mesos
