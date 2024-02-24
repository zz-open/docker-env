#!/usr/bin/env bash
 
sed -i "s/\$SENTINEL_QUORUM/${SENTINEL_QUORUM}/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_DOWN_AFTER/${SENTINEL_DOWN_AFTER}/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_FAILOVER/${SENTINEL_FAILOVER}/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_MASTER/${SENTINEL_MASTER}/g" /redis/sentinel.conf
sed -i "s/\$MASTER_IP/${MASTER_IP}/g" /redis/sentinel.conf
sed -i "s/\$MASTER_PORT/${MASTER_PORT}/g" /redis/sentinel.conf
sed -i "s/\$MASTER_PASSWORD/${MASTER_PASSWORD}/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_PORT/${SENTINEL_PORT}/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_ANNOUNCE_IP/${SENTINEL_ANNOUNCE_IP}/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_ANNOUNCE_PORT/${SENTINEL_ANNOUNCE_PORT}/g" /redis/sentinel.conf

redis-server /redis/sentinel.conf --sentinel