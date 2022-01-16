#!/bin/bash

docker-compose down

rm -rf ./borker1/logs/*
rm -rf ./borker1/store/*
rm -rf ./nameserver1/logs/*
