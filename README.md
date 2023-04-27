# tozd/influxdb

<https://gitlab.com/tozd/docker/influxdb>

Available as:

- [`tozd/influxdb`](https://hub.docker.com/r/tozd/influxdb)
- [`registry.gitlab.com/tozd/docker/influxdb`](https://gitlab.com/tozd/docker/influxdb/container_registry)

## Image inheritance

[`tozd/base`](https://gitlab.com/tozd/docker/base) ← [`tozd/runit`](https://gitlab.com/tozd/docker/runit) ← `tozd/influxdb`

## Tags

- `1.2`: InfluxDB 1.2.4
- `1.3`: InfluxDB 1.3.9
- `1.4`: InfluxDB 1.4.3
- `1.5`: InfluxDB 1.5.5
- `1.6`: InfluxDB 1.6.6
- `1.7`: InfluxDB 1.7.10
- `1.8`: InfluxDB 1.8.10

## Volumes

- `/var/log/influxdb`: log files
- `/data`: data files, persist this volume to not lose state

## Ports

- `8086/tcp`: HTTP port for InfluxDB HTTP endpoints.

## Description

You can mount InfluxDB's `influxdb.toml` file into `/etc/influxdb/influxdb.toml` inside the container. See the file in the image to see how it is configured by default.
