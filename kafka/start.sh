#!/bin/bash

function Start() {
    docker-compose up -d kafka
    #open -a "/Applications/Google Chrome.app" "http://localhost:9110"
    #open -a "/Applications/Google Chrome.app" "http://localhost:9111"
    #open -a "/Applications/Google Chrome.app" "http://localhost:8048"
}

Start