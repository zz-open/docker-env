# docker-compose [官网](https://docs.docker.com/compose/compose-file/compose-file-v3/)

## network

## volume

## image

## container

## extra_hosts
extra_hosts标签作用是 往容器内/etc/hosts文件中添加记录，注意格式是相反的
```shell
extra_hosts:
      - "www.baidu.com:127.0.0.1"
```

## hostname
hostname标签是设置容器的主机名
```shell
hostname: xxxxx
```

## environment
设置环境变量 和dockerfile中ENV作用一致
```shell
environment:  # 设置环境变量
    RABBITMQ_DEFAULT_VHOST: "/"
    RABBITMQ_DEFAULT_USER: "guest"
    RABBITMQ_DEFAULT_PASS: "guest
```
## ports
## depends_on

# docker-compose config
查看配置，变量会被解析
# 清除track缓存
 git rm -r --cached .
 