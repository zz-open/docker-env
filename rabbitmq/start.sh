#!/bin/bash

function Start(){
  docker-compose up -d rabbitmq
  open -a "/Applications/Google Chrome.app" "http://localhost:15672"
}

Start