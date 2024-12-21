#!/usr/bin/env bash
set -eu set -o pipefail

CurrentDirPath="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ProjectRootPath=$(
  cd ${CurrentDirPath}
  pwd
)

# 引入当前目录下的sh source $(dirname $0)/common.sh
source "${ProjectRootPath}/.env"

initFrontendNetwork() {
  local networkName=${FRONTEND_NETWORK_NAME}
  local subnet="${FRONTEND_SUBNET}"
  local gateway="${FRONTEND_SUBNET_GATEWAY}"
  local driver="${NETWORKS_DRIVER}"

  echo "docker network create --driver ${driver} --subnet=${subnet} --gateway=${gateway} ${networkName}"
}

initBackendNetwork() {
  local networkName=${BACKEND_NETWORK_NAME}
  local subnet="${BACKEND_SUBNET}"
  local gateway="${BACKEND_SUBNET_GATEWAY}"
  local driver="${NETWORKS_DRIVER}"

  echo "docker network create --driver ${driver} --subnet=${subnet} --gateway=${gateway} ${networkName}"
}

setup() {
  echo -e "CurrentDirPath: ${CurrentDirPath} \n"
  echo -e "ProjectRootPath: ${ProjectRootPath} \n"

  initFrontendNetwork
  initBackendNetwork
}

setup
