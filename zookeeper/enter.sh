#!/usr/bin/env bash

function EnterContainer(){
  docker-compose exec zookeeper bash
}

EnterContainer