#!/bin/bash

function Start(){
  docker-compose up -d nsq
#  open http://localhost:4171
}

Start