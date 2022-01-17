#!/bin/bash

docker-compose up -d prometheus grafana
#docker-compose up -d prometheus grafana alertmanager

open -a "/Applications/Google Chrome.app" "http://localhost:9090"
open -a "/Applications/Google Chrome.app" "http://localhost:3000"








