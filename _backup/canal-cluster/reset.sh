#!/usr/bin/env bash

docker-compose down

rm -rf ./mysql/data/*

rm -rf ./canal-admin/logs/*
rm -rf ./canal-server/logs/*