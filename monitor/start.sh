#!/usr/bin/env bash

function Start() {
    docker-compose up -d prometheus grafana
}

Start