#!/bin/bash

docker-compose down

rm -rf ./caddy/data/*
rm -rf ./caddy/logs/*
rm -rf ./caddy/etc/*
rm -rf ./caddy/config/*
rm -rf ./www/*