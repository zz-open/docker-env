#!/usr/bin/env bash

source  $(dirname $0)/.env
REDIS_CONTAINER_NAMES_ARRAY=(${REDIS_CONTAINER_NAMES// / })
REDIS_CONTAINER_IPS_ARRAY=(${REDIS_CONTAINER_IPS// / })

genRedisConf(){
    local index=0
    for i in ${REDIS_CONTAINER_NAMES_ARRAY[@]};do
        local _ip="${REDIS_CONTAINER_IPS_ARRAY[$index]}"
        local _name="${i}"
        echo -e "Index: $index, Container Name: ${_name}, Container Ip: ${_ip}"

        local redisConfFileName="${_name}.conf"
        if [ ! -d "./conf" ]; then
            mkdir -p ./conf
        fi

        export REDIS_CONTAINER_IP="${_ip}"
        export REDIS_CONTAINER_PORT="${REDIS_CONTAINER_PORT}"
        export REDIS_CONTAINER_BUS_PORT="${REDIS_CONTAINER_BUS_PORT}"
        export REDIS_PASSWORD="${REDIS_PASSWORD}"
        cat ./redis-cluster.tmpl | envsubst > ./conf/${redisConfFileName}
        index=$((index+1))
    done

    echo -e "redis节点配置文件创建成功"
}   

genRedisConf