#!/bin/bash

clusterInfo(){
  docker exec -it rocketmq-nameserver2 bash -c 'sh bin/mqadmin clusterList -n 127.0.0.1:9876'
}