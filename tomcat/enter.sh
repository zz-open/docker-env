#!/usr/bin/env bash

function EnterContainer(){
  docker-compose exec tomcat bash
}

EnterContainer