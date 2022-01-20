#!/bin/bash

CopyCanalServerFile(){
#  docker cp  canal-server:/home/admin/canal-server/conf/canal.properties ./canal-server/conf/canal.properties
  docker cp  canal-server:/home/admin/canal-server/conf/canal_local.properties ./canal-server/conf/canal_local.properties
#  docker cp  canal-server:/home/admin/canal-server/conf/test-demo/instance.properties ./canal-server/conf/test-demo/instance.properties
}

CheckStatus(){
  show variables like 'log_bin';
  show variables like 'binlog_format';
  show master status;

}

CopyCanalServerFile