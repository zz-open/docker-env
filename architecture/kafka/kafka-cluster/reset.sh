#!/bin/bash

docker-compose down

rm -rf ./kafka2/data/*
rm -rf ./kafka2/var/run/*

rm -rf ./kafka3/data/*
rm -rf ./kafka3/var/run/*

rm -rf ./kafka4/data/*
rm -rf ./kafka4/var/run/*

rm -rf ./zookeeper5/data/*
rm -rf ./zookeeper5/datalog/*