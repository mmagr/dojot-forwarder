#!/bin/bash

# docker run \
#            # run interactively and remove the container once we're done
#            --rm -it \
#            # disable monitoring (keeps elasticsearch usage in check)
#            -e XPACK_MONITORING_ENABLED=false \
#            # allows us to use name resolution when creating subscriptions
#            --network compose_default --network-alias logstash \
#            # expose logging port (allows emission of host events)ose_default --network-alias logstash \
#            -p 8080:8080 \
#            # mounts pipeline configuration
#            -v $PWD/pipeline/:/usr/share/logstash/pipeline/ \
#            docker.elastic.co/logstash/logstash:5.5.1

docker run --rm -it \
           -e XPACK_MONITORING_ENABLED=false \
           --network compose_default --network-alias logstash \
           -p 8080:8080 \
           -v $PWD/pipeline/:/usr/share/logstash/pipeline/ \
           docker.elastic.co/logstash/logstash:5.5.1
