#!/usr/bin/env bash

ENV_PATH=../.env

ETCD1_CONTAINER_NAME=etcd1
ETCD1_IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${ETCD1_CONTAINER_NAME})
ETCD2_CONTAINER_NAME=etcd2
ETCD2_IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${ETCD2_CONTAINER_NAME})
ETCD3_CONTAINER_NAME=etcd3
ETCD3_IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${ETCD3_CONTAINER_NAME})
