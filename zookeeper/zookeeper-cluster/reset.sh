#!/bin/bash

docker-compose down

rm -rf ./zookeeper2/data/*
rm -rf ./zookeeper2/datalog/*

rm -rf ./zookeeper3/data/*
rm -rf ./zookeeper3/datalog/*

rm -rf ./zookeeper4/data/*
rm -rf ./zookeeper5/datalog/*