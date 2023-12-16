#!/bin/bash

#docker-compose up -d elasticsearch-v7 logstash-v7 kibana-v7 filebeat-v7
docker-compose up -d elasticsearch-v7 lelasticsearch-head-v7

open -a "/Applications/Google Chrome.app" "localhost:5601"
#账号:elastic  密码:changeme

#open -a "/Applications/Google Chrome.app" "http://localhost:9111"

#https://blog.csdn.net/wsdc0521/article/details/106377407
open -a "/Applications/Google Chrome.app" "http://localhost:9100?auth_user=elastic&auth_password=changeme"








