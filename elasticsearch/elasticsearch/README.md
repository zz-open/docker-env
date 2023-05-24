# ELASTICSEARCH [官网](https://www.elastic.co/cn/)
[参考学习](https://blog.csdn.net/txyllyyj/article/details/121481739)
[命令文档](https://www.elastic.co/guide/en/elasticsearch/reference/current/setup-passwords.html)
[网络配置](https://www.elastic.co/guide/en/elasticsearch/reference/8.7/modules-network.html)


AAEAAWVsYXN0aWMva2liYW5hL2Vucm9sbC1wcm9jZXNzLXRva2VuLTE2ODQ2MDQxOTg1OTA6ZUtDLTF1dWZUd2U2cU9SMHVnb20zUQ

AAEAAWVsYXN0aWMva2liYW5hL215LXRva2VuOmk4VkVkc2UtUmRHZjFCUWhaeklRVGc



# 说明
- 8.7版本容器启动默认开启了https认证
- 默认最高权限账号为elastic


# 命令工具
- 重置内置账号的密码
```shell
新版本建议使用如下脚本修改密码, 也可auto自动生成
docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-reset-password -u elastic -i
docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-reset-password -u kibana_system -i
```

- 生成注册token
```shell
docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana
docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token --scope kibana
```

- 查询用户
```shell
docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-users list
```
- 查询加密的密码
```shell
docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-keystore show xpack.security.http.ssl.keystore.secure_password
docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-keystore show xpack.security.transport.ssl.keystore.secure_password
```
- 创建kibana service account token
```shell
docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-service-tokens create elastic/kibana my-token
#curl --cacert config/certs/http_ca.crt -X POST "https://localhost:9200/_security/service/elastic/kibana/credential/token/my-token?pretty"

验证
curl --cacert config/certs/http_ca.crt -H "Authorization: Bearer AAEAAWVsYXN0aWMva2liYW5hL215LXRva2VuOmk4VkVkc2UtUmRHZjFCUWhaeklRVGc" https://localhost:9200/_security/_authenticate
```