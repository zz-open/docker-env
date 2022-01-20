#!/bin/bash

function Reload(){
  docker-compose down

  rm -rf ./data/*
  rm -rf ./logs/*

  docker-compose build redismod
  docker-compose up -d redismod
}

Reload