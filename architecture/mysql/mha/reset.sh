#!/usr/bin/env bash

docker-compose down

rm -rf ./master1/data/*
rm -rf ./slave1/data/*
rm -rf ./slave2/data/*