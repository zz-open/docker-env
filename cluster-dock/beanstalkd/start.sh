#!/usr/bin/env bash

function Start(){
  docker-compose up -d
  open -a "/Applications/Google Chrome.app" "http://localhost:2080"
}

Start