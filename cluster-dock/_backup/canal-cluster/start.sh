#!/usr/bin/env bash

docker-compose up -d canal-mysql canal-admin canal-server

open -a "/Applications/Google Chrome.app" "http://localhost:8089"