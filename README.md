# tozd/influxdb

<https://gitlab.com/tozd/docker/influxdb>

Available as:

- [`tozd/influxdb`](https://hub.docker.com/r/tozd/influxdb)
- [`registry.gitlab.com/tozd/docker/influxdb`](https://gitlab.com/tozd/docker/influxdb/container_registry)

## Image inheritance

[`tozd/base`](https://gitlab.com/tozd/docker/base) ← [`tozd/runit`](https://gitlab.com/tozd/docker/runit) ← `tozd/influxdb`

## Tags

- `latest`: InfluxDB 1.2.4

## Volumes

- `/var/log/influxdb`: log files
- `/data`: data files, persist this volume to not lose state

## Ports

- `8083/tcp`: HTTP port on which built-in, web-based admin interface listens.
- `8086/tcp`: HTTP port for InfluxDB HTTP endpoints.
