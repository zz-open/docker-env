#!/usr/bin/env bash

initNetwork() {
  local networkName="zznetwork"
  local subnet="172.19.150.0/24"
  local gateway="172.19.150.1"

  docker network create --driver bridge --subnet=${subnet} --gateway=${gateway} ${networkName}
}

initNetwork