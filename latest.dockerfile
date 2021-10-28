FROM registry.gitlab.com/tozd/docker/runit:ubuntu-trusty

EXPOSE 8083/tcp
EXPOSE 8086/tcp

VOLUME /data

ENV INFLUXDB_VERSION 1.2.4

RUN apt-get update -q -q && \
 apt-get --yes --force-yes install wget ca-certificates && \
 wget -O /tmp/influxdb.deb https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
 dpkg -i /tmp/influxdb.deb && \
 rm /tmp/influxdb.deb && \
 apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.cache ~/.npm

COPY ./etc /etc
