#!/bin/bash

docker-compose down

rm -rf ./mysql/data/*

rm -rf ./canal-server/logs/*