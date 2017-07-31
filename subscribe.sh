#!/bin/bash

(curl localhost:1026/v1/subscribeContext -s -S \
    --header "Content-Type: application/json" \
    --header "Accept: application/json" \
    --header "Fiware-Service: admin" \
    --header "Fiware-ServicePath: /" \
    -d @- | python -m json.tool) <<PAYLOAD
{
    "entities": [
        {
            "type": "device",
            "isPattern": "true",
            "id": ".*"
        }
    ],
    "reference": "http://logstash:8080/notify",
    "duration": "P10Y",
    "notifyConditions": [{ "type": "ONCHANGE" }]
}
PAYLOAD

