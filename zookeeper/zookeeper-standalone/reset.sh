#!/bin/bash

docker-compose down

rm -rf ./zookeeper/data/*
rm -rf ./zookeeper/datalog/*