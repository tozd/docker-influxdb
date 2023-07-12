FROM registry.gitlab.com/tozd/docker/runit:ubuntu-focal

EXPOSE 8083/tcp

VOLUME /data
VOLUME /var/log/influxdb

ARG INFLUXDB_VERSION=1.10.3

RUN apt-get update -q -q && \
  apt-get --yes --force-yes install wget ca-certificates curl && \
  wget -O /tmp/influxdb.deb https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
  dpkg -i /tmp/influxdb.deb && \
  rm /tmp/influxdb.deb && \
  apt-get purge --yes --force-yes --auto-remove wget ca-certificates && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.cache ~/.npm

COPY ./etc/influxdb /etc/influxdb
COPY ./etc/service/influxdb /etc/service/influxdb
