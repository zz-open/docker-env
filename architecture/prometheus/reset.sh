#!/bin/bash

docker-compose down

rm -rf ./grafana/data/*
rm -rf ./grafana/provisioning/dashboards/*
rm -rf ./grafana/provisioning/datasources/*

rm -rf ./prometheus/data/*