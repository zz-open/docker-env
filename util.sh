#!/usr/bin/env bash

function CreateNetwork() {
    docker network create --driver bridge  --subnet=172.19.0.0/16 lanp-network
}

function replaceIp() {
    #可能内网ip会冲突，使用此函数替换内网IP
}

#CreateNetwork