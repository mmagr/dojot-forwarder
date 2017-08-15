#!/bin/bash

docker run --rm -it \
           -e XPACK_MONITORING_ENABLED=false \
           --network compose_default --network-alias logstash \
            -p 8080:8080 \
           -v $PWD/pipeline/mongodb.sample.conf:/usr/share/logstash/pipeline/mongodb.sample.conf \
           test/logstash logstash -r
