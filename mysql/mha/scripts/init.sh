#!/usr/bin/env bash

source ./util.sh
source ./tradition.sh

#mysql 启动需要时间，等待一会再执行
#AddReplicationAccount
#sleep 5

StopSlave
sleep 2

StartSlave
sleep 2

ShowSlaveStatus