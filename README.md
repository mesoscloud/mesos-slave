# mesos-slave

[![Join the chat at https://gitter.im/mesoscloud/mesos-slave](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/mesoscloud/mesos-slave?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

*Work in progress*

## centos

[![](https://badge.imagelayers.io/mesoscloud/mesos-slave:0.22.1-centos-7.svg)](https://imagelayers.io/?images=mesoscloud/mesos-slave:0.22.1-centos-7)

Usage example:

```
docker run -d \
-e MESOS_MASTER=zk://master-1:2181,master-2:2181,master-3:2181/mesos \
-e MESOS_IP=10.0.0.123 \
-e MESOS_HOSTNAME=10.0.0.123 \
--name slave --net host --privileged --restart always
-v /var/run/docker.sock:/var/run/docker.sock \
-v /sys/fs/cgroup:/sys/fs/cgroup \
mesoscloud/mesos-slave:0.22.1-centos-7
```

*What's going on here?*

- `MESOS_IP` is optional, use it if you have a private interface and you want Mesos to only listen on it
- `MESOS_HOSTNAME` is optional, use it if you don't have name resolution setup
- We're naming the container `slave`.  If you give it a name that starts with `mesos-` it will be removed by the mesos slave itself - try it if you don't believe me ;)
- We're using `host` networking.  One advantage of this is that `localhost` is the same for all `--net host` containers.  We are not concerned about port conflicts for non app containers.
- `--restart always` will ensure that your container starts on boot and restarts on failure
- We're bind mounting the docker socket into the container, you can also bind mount `/usr/bin/docker` if the docker on the host is compatible.
- The Mesos Slave will not work without access to `/sys/fs/cgroup`.  On CentOS 6 the path is `/cgroup`.

## ubuntu

[![](https://badge.imagelayers.io/mesoscloud/mesos-slave:0.22.1-ubuntu-14.04.svg)](https://imagelayers.io/?images=mesoscloud/mesos-slave:0.22.1-ubuntu-14.04)
