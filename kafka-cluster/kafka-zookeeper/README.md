# kafka(zookeeper模式)
[kafka-console-ui](https://github.com/xxd763795151/kafka-console-ui/)

# 问题
- 如果碰见容器启动问题，一般都是因为目录挂载不成功导致的，修改权限试试
- 通常bitnami下的镜像会出现这种问题
```text
1. chmod 777 -R xxxx
2. Dockerfile 添加 USER root
```