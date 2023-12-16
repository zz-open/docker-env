#!/usr/bin/env bash

source './common.sh'

initFrontendNetwork() {
  local networkName=${FRONTEND_NETWORK_NAME}
  local subnet="${FRONTEND_SUBNET}"
  local gateway="${FRONTEND_SUBNET_GATEWAY}"
  local driver="${NETWORKS_DRIVER}"

  docker network create --driver ${driver} --subnet=${subnet} --gateway=${gateway} ${networkName}
}

initBackendNetwork(){
  local networkName=${BACKEND_NETWORK_NAME}
  local subnet="${BACKEND_SUBNET}"
  local gateway="${BACKEND_SUBNET_GATEWAY}"
  local driver="${NETWORKS_DRIVER}"

  docker network create --driver ${driver} --subnet=${subnet} --gateway=${gateway} ${networkName}
}

initFrontendNetwork
initBackendNetwork