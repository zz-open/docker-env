#!/bin/bash

function Start(){
   docker-compose up -d rocketmq-nameserver1 rocketmq-broker1 rocketmq-dashboard
}


#同步模式
function SyncModelStart(){
  cp ./conf/broker-sync.conf ./broker1/conf/brker.conf
#  LOCALHOST=`getMyIp`
#  sed -i
  docker-compose up -d rocketmq-nameserver1 rocketmq-broker1 rocketmq-dashboard
}


#异步模式
function AsyncModelStart(){
  cp ./conf/broker-async.conf ./broker1/conf/broker.conf
  docker-compose up -d rocketmq-nameserver1 rocketmq-broker1 rocketmq-dashboard
}

function getMyIp() {
    case "`uname`" in
        Darwin)
         myip=`echo "show State:/Network/Global/IPv4" | scutil | grep PrimaryInterface | awk '{print $3}' | xargs ifconfig | grep inet | grep -v inet6 | awk '{print $2}'`
         ;;
        *)
         myip=`ip route get 1 | awk '{print $NF;exit}'`
         ;;
  esac
  echo $myip
}

#默认是启动同步模式
#AsyncModelStart
Start
#open -a "/Applications/Google Chrome.app" "http://localhost:8080"