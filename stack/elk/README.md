# ELK
```text
单机版 elasticsearch+kibana+logstash
```

**注意:**
- 经过权衡，统一采用环境变量方式注入，因为容器内部会设置默认值，如果采取配置文件覆盖的话，可能导致默认生成选项丢失，无法启动。官网也有说明



