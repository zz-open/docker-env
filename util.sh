#!/usr/bin/env bash

function CreateNetwork() {
    docker network create --driver bridge  --subnet=172.19.0.0/16 lanp-network
}

CreateNetwork