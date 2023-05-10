#!/bin/bash

function Start(){
  docker exec -it --user root zookeeepr bash && cd /bin

  #查看zookeeper集群状态
  #./bin/zkServer.sh status
  #  docker-compose up -d zookeeper zoonavigator
  #open -a "/Applications/Google Chrome.app" "http://localhost:9110"
  #open -a "/Applications/Google Chrome.app" "http://localhost:9111"
  #open -a "/Applications/Google Chrome.app" "http://localhost:8048"
}

Start