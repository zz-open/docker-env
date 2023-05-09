#!/bin/bash

docker-compose down

rm -rf ./kafka1/data/*
rm -rf ./kafka1/var/run/*

rm -rf ./zookeeper1/data/*
rm -rf ./zookeeper1/datalog/*