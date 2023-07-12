# tozd/influxdb

<https://gitlab.com/tozd/docker/influxdb>

Available as:

- [`tozd/influxdb`](https://hub.docker.com/r/tozd/influxdb)
- [`registry.gitlab.com/tozd/docker/influxdb`](https://gitlab.com/tozd/docker/influxdb/container_registry)

## Image inheritance

[`tozd/base`](https://gitlab.com/tozd/docker/base) ← [`tozd/dinit`](https://gitlab.com/tozd/docker/dinit) ← `tozd/influxdb`

## Tags

- `1.2`: InfluxDB 1.2.4
- `1.3`: InfluxDB 1.3.9
- `1.4`: InfluxDB 1.4.3
- `1.5`: InfluxDB 1.5.5
- `1.6`: InfluxDB 1.6.6
- `1.7`: InfluxDB 1.7.11
- `1.8`: InfluxDB 1.8.10
- `1.9`: InfluxDB 1.9.11
- `1.10`: InfluxDB 1.10.3

## Volumes

- `/var/log/influxdb`: Log files.
- `/data`: Data files. Persist this volume to not lose state.

## Ports

- `8086/tcp`: HTTP port for InfluxDB HTTP endpoints.

## Description

You can mount InfluxDB's `influxdb.toml` file into `/etc/influxdb/influxdb.toml` inside the container or extend the image.
See the file in the image to see how it is configured by default.

## GitHub mirror

There is also a [read-only GitHub mirror available](https://github.com/tozd/docker-influxdb),
if you need to fork the project there.
