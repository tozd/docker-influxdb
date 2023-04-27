#!/bin/sh

echo "Running Docker image"
docker run -d --name test --rm -p 8086:8086 "tozd/influxdb" || exit 1

echo "Sleeping"
sleep 10

echo "Testing"
wget -q -S -O - http://docker:8086/ping 2>&1 | grep -q X-Influxdb-Version
result=$?

echo "Stopping Docker image"
docker stop test

exit "$result"