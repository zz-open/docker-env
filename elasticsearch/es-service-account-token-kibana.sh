#!/usr/bin/env bash

function CreateServiceAccountToken(){
  docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-service-tokens create elastic/kibana my-token
}

CreateServiceAccountToken