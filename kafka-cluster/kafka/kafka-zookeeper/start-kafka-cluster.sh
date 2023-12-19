#!/usr/bin/env bash

function Start() {
    docker-compose up -d kafka1 kafka2 kafka3
}

Start