#!/bin/bash

docker-compose down

rm -rf ./elasticsearch/data/*
rm -rf ./filebeat/data/*
rm -rf ./filebeat/logs/*
