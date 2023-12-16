#!/usr/bin/env bash

function Start(){
  docker-compose up -d
  open -a "/Applications/Google Chrome.app" "http://localhost:15672"
}

Start