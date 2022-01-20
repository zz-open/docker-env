#!/bin/bash

docker-compose down

rm -rf ./etcd4/data/*
rm -rf ./etcd2/data/*
rm -rf ./etcd3/data/*