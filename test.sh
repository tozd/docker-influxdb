#!/bin/sh

set -e

cleanup() {
  echo "Logs"
  docker logs test || true

  echo "Stopping Docker image"
  docker stop test || true
  docker rm -f test
}

echo "Running Docker image"
docker run -d --name test -p 8086:8086 "${CI_REGISTRY_IMAGE}:${TAG}"
trap cleanup EXIT

echo "Sleeping"
sleep 10

echo "Testing"
wget -q -S -O - http://docker:8086/ping 2>&1 | grep -q X-Influxdb-Version
