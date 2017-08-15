#!/bin/bash

curl --include \
     --request POST \
     --header "Content-Type: application/json" \
     --header "fiware-service: admin" \
     --header "fiware-servicepath: /" \
     --data-binary "{
  \"subject\": {
    \"entities\": [
      {
        \"idPattern\": \".*\",
        \"type\": \"device\"
      }
    ]
  },
  \"notification\": {
    \"http\": {
      \"url\": \"http://logstash:8080/v2\"
    }
  }
}" \
'http://localhost:1026/v2/subscriptions'
