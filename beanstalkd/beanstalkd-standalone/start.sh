#!/bin/bash

Start(){
  docker-compose up -d
  open -a "/Applications/Google Chrome.app" "http://localhost:2080"
  #docker compose exec beanstalkd-console bash
}

Start()