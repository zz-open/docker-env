#!/bin/bash

docker-compose up -d elasticsearch logstash kibana filebeat

#open -a "/Applications/Google Chrome.app" "http://localhost:9110"
#open -a "/Applications/Google Chrome.app" "http://localhost:9111"