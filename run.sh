#!/bin/bash

docker run --rm -e XPACK_MONITORING_ENABLED=false --network compose_default --network-alias logstash -it -p 8080:8080 -v  $PWD/pipeline/:/usr/share/logstash/pipeline/ docker.elastic.co/logstash/logstash:5.5.1

