[![Build Status](https://travis-ci.org/mesoscloud/mesos-slave.svg?branch=master)](https://travis-ci.org/mesoscloud/mesos-slave)
[![Docker Stars](https://img.shields.io/docker/stars/mesoscloud/mesos-slave.svg)](https://hub.docker.com/r/mesoscloud/mesos-slave/)
[![Docker Pulls](https://img.shields.io/docker/pulls/mesoscloud/mesos-slave.svg)](https://hub.docker.com/r/mesoscloud/mesos-slave/)

# mesos-slave

[![Join the chat at https://gitter.im/mesoscloud/mesoscloud](https://badges.gitter.im/mesoscloud/mesoscloud.svg)](https://gitter.im/mesoscloud/mesoscloud?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Mesos

http://mesos.apache.org/

## CentOS

[![](https://badge.imagelayers.io/mesoscloud/mesos-slave:0.28.1-centos-7.svg)](https://imagelayers.io/?images=mesoscloud/mesos-slave:0.28.1-centos-7)

e.g.

```
docker run -d \
-e MESOS_HOSTNAME=ip.address \
-e MESOS_IP=ip.address \
-e MESOS_MASTER=zk://node-1:2181,node-2:2181,node-3:2181/mesos \
-v /sys/fs/cgroup:/sys/fs/cgroup \
-v /var/run/docker.sock:/var/run/docker.sock \
--name slave --net host --privileged --restart always \
mesoscloud/mesos-slave:0.28.1-centos-7
```

Set environment variable `SECRET` to enable slave authentication.

## Ubuntu

[![](https://badge.imagelayers.io/mesoscloud/mesos-slave:0.28.1-ubuntu-14.04.svg)](https://imagelayers.io/?images=mesoscloud/mesos-slave:0.28.1-ubuntu-14.04)

e.g.

```
docker run -d \
-e MESOS_HOSTNAME=ip.address \
-e MESOS_IP=ip.address \
-e MESOS_MASTER=zk://node-1:2181,node-2:2181,node-3:2181/mesos \
-v /sys/fs/cgroup:/sys/fs/cgroup \
-v /var/run/docker.sock:/var/run/docker.sock \
--name slave --net host --privileged --restart always \
mesoscloud/mesos-slave:0.28.1-ubuntu-14.04
```

Set environment variable `SECRET` to enable slave authentication.
