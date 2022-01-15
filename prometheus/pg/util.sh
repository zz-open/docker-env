#!/bin/bash

#密码：changeme

docker exec filebeat-v7 /bin/bash -c 'filebeat modules enable mysql'
#docker exec elasticsearch-v7 /bin/bash -c 'filebeat modules enable mysql'
docker compose exec elasticsearch-v7 bash

#先配置xpack
#设置集群密码：/usr/share/elasticsearch/bin/elasticsearch-setup-passwords interactive
#interactive：给用户一一设置密码。
#auto：自动生成密码。

#修改es用户密码
#curl -H "Content-Type:application/json" -XPOST -u elastic 'http://127.0.0.1:9200/_xpack/security/user/elastic/_password' -d '{ "password" : "changeme" }'

#密文配置
#/usr/share/kibana/bin/kibana-keystore --allow-root create
#/usr/share/kibana/bin/kibana-keystore --allow-root add elasticsearch.username
#/usr/share/kibana/bin/kibana-keystore --allow-root add elasticsearch.password