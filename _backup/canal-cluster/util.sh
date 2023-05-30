#!/usr/bin/env bash

CopyCanalServerFile(){
#  docker cp  canal-server:/home/admin/canal-server/conf/canal.properties ./canal-server/conf/canal.properties
  docker cp  canal-server:/home/admin/canal-server/conf/canal_local.properties ./canal-server/conf/canal_local.properties
#  docker cp  canal-server:/home/admin/canal-server/conf/test-demo/instance.properties ./canal-server/conf/test-demo/instance.properties
}

CopyCanalAdminFile(){
  docker cp  canal-admin:/home/admin/canal-admin/conf/application.yml ./canal-admin/conf/application.yml
  docker cp  canal-admin:/home/admin/canal-admin/conf/canal-template.properties ./canal-admin/conf/canal-template.properties
  docker cp  canal-admin:/home/admin/canal-admin/conf/instance-template.properties ./canal-admin/conf/instance-template.properties
}

CopyCanalServerFile
#CopyCanalAdminFile