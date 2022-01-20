#!/bin/bash

function Reload(){
  docker-compose down

  rm -rf ./data/*
  rm -rf ./logs/*

  docker-compose build redis
  docker-compose up -d redis
}

Reload