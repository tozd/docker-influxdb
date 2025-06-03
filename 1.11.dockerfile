FROM registry.gitlab.com/tozd/docker/dinit:ubuntu-focal

EXPOSE 8083/tcp

VOLUME /data
VOLUME /var/log/influxdb

ENV LOG_TO_STDOUT=0

ARG INFLUXDB_VERSION=1.11.8

RUN apt-get update -q -q && \
  apt-get --yes --force-yes install wget ca-certificates curl && \
  wget -O /tmp/influxdb.deb https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
  dpkg -i /tmp/influxdb.deb && \
  rm /tmp/influxdb.deb && \
  apt-get purge --yes --force-yes --auto-remove wget ca-certificates && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.cache ~/.npm

COPY ./etc/influxdb /etc/influxdb
COPY ./etc/service/influxdb /etc/service/influxdb
COPY ./log /etc/service/influxdb/log
