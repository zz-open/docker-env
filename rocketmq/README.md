# Rocketmq [官网](https://rocketmq.apache.org/zh/docs)

#参考链接：https://github.com/Anthony-Dong/docker-rocketmq-cluster

#1.利用脚本构建rocketmq最新的镜像，官方只提供了脚本，自己本地构建
#2.集群有很多种模式，主主，主从，dledger模式等，dledger可以自动选举leader结点

#下载特别慢，替换源
#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories