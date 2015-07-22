FROM ubuntu:14.04
MAINTAINER ep@geneegroup.com

RUN apt-get update  \
    && apt-get install -y beanstalkd \
    && rm -rf /var/lib/apt/lists/*

VOLUME ["/data"]

EXPOSE 11300

CMD ["/usr/bin/beanstalkd", "-f", "60000", "-b", "/data"]
