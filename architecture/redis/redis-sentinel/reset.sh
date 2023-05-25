#!/bin/bash

function Reset() {
    docker-compose down && \
    rm -rf ./master/data && \
    rm -rf ./master/logs && \
    rm -rf ./slave1/data && \
    rm -rf ./slave1/logs && \
    rm -rf ./slave2/data && \
    rm -rf ./slave2/logs && \
    rm -rf ./slave3/data && \
    rm -rf ./slave4/logs
}

Reset