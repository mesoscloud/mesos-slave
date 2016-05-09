FROM centos:7
MAINTAINER Peter Ericson <pdericson@gmail.com>

RUN rpm -i http://repos.mesosphere.io/el/7/noarch/RPMS/mesosphere-el-repo-7-1.noarch.rpm && \
yum -y install mesos-0.28.0

# http://docs.docker.com/installation/centos/
RUN curl -fLsS https://get.docker.com/ | sh

CMD ["/usr/sbin/mesos-slave"]

ENV MESOS_WORK_DIR /tmp/mesos
ENV MESOS_CONTAINERIZERS docker,mesos

# https://mesosphere.github.io/marathon/docs/native-docker.html
ENV MESOS_EXECUTOR_REGISTRATION_TIMEOUT 5mins

# https://issues.apache.org/jira/browse/MESOS-4675
ENV MESOS_SYSTEMD_ENABLE_SUPPORT false

VOLUME /tmp/mesos

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
