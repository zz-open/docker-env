#Redis-Cluster模式

1.连接集群的命令：
docker exec -it redis-cluster_redis1 /bin/bash
docker exec -it redis-cluster_redis2 /bin/bash
docker exec -it redis-cluster_redis3 /bin/bash
docker exec -it redis-cluster_redis4 /bin/bash
docker exec -it redis-cluster_redis5 /bin/bash
docker exec -it redis-cluster_redis6 /bin/bash

redis-cli -c -h 127.0.0.1 -p 6379 -a 123456

本地：
redis-cli -c -h 127.0.0.1 -p 16301 -a 123456
redis-cli -c -h 127.0.0.1 -p 16302 -a 123456
redis-cli -c -h 127.0.0.1 -p 16303 -a 123456
redis-cli -c -h 127.0.0.1 -p 16304 -a 123456
redis-cli -c -h 127.0.0.1 -p 16305 -a 123456
redis-cli -c -h 127.0.0.1 -p 16306 -a 123456

info 
cluster info
都可以查看redis cluster信息


2.查看结点信息
redis-cli -c -a 123456 -h 127.0.0.1 -p 16301 cluster nodes |sort -k 3
redis-cli -c -a 123456 -h 127.0.0.1 -p 16301 cluster info


3.查看所有容器的内部ip
docker inspect -f='{{.Name}} {{.NetworkSettings.IPAddress}} {{.HostConfig.PortBindings}}' $(docker ps -aq) | grep redis-cluster
docker inspect -f='{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq) | grep redis-cluster











