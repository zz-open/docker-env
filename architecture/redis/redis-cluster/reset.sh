#!/bin/bash

function Reset() {
    docker-compose down && \
    rm -rf ./redis1/data && \
    rm -rf ./redis1/logs && \
    rm -rf ./redis2/data && \
    rm -rf ./redis2/logs && \
    rm -rf ./redis3/data && \
    rm -rf ./redis3/logs && \
    rm -rf ./redis4/data && \
    rm -rf ./redis4/logs && \
    rm -rf ./redis5/data && \
    rm -rf ./redis5/logs && \
    rm -rf ./redis6/data && \
    rm -rf ./redis6/logs
}

Reset