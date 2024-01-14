# ELK
```text
elasticsearch+kibana
```

**注意:**
- 经过权衡，统一采用环境变量方式注入，因为容器内部会设置默认值，如果采取配置文件覆盖的话，可能导致默认生成选项丢失，无法启动。官网也有说明


## Elasticsearch
- password: elasticsearch 自己使用的密码
- enrollment: 其他服务想要和elasticsearch通信需要是这个临时令牌
- 默认用户：elastic



