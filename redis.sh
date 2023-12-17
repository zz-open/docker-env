#!/usr/bin/env bash

source './_common/scripts/common.sh'

downloadLatestRedisConf(){
    # 下载最新版本的redis.conf文件备用
    wget -O "${ProjectRootPath}/redis" "https://github.com/redis/redis/blob/7.2/redis.conf"
}

editRedisConf(){
    echo -e "修改redis.conf 成功\n"
    # - bind 127.0.0.1 -::1 修改为:bind 0.0.0.0 -::1
    # - requirepass 123456
}

downloadLatestRedisConf
editRedisConf