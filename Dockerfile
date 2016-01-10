FROM tozd/runit

EXPOSE 8083/tcp
EXPOSE 8086/tcp

VOLUME /data

ENV INFLUXDB_VERSION 0.9.6.1

RUN apt-get update -q -q && \
 apt-get --yes --force-yes install wget ca-certificates && \
 wget -O /tmp/influxdb.deb https://s3.amazonaws.com/influxdb/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
 dpkg -i /tmp/influxdb.deb && \
 rm /tmp/influxdb.deb

COPY ./etc /etc
