#!/bin/bash

docker-compose down

rm -rf ./borker-m1/logs/*
rm -rf ./borker-m1/store/*

rm -rf ./borker-slave1/logs/*
rm -rf ./borker-slave1/store/*

rm -rf ./borker-slave2/logs/*
rm -rf ./borker-slave2/store/*

rm -rf ./nameserver2/logs/*
rm -rf ./nameserver3/logs/*
