FROM debian:8
MAINTAINER jia.huang@geneegroup.com

RUN apt-get update  \
    && apt-get install -y beanstalkd \
    && rm -rf /var/lib/apt/lists/*

VOLUME ["/data"]

EXPOSE 11300

CMD ["/usr/bin/beanstalkd", "-f", "60000", "-b", "/data"]
