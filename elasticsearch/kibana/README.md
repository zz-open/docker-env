# KIBANA 
[官网](https://www.elastic.co/guide/en/kibana/index.html) 
[安装官网](https://www.elastic.co/guide/en/kibana/current/install.html) 
[配置官网](https://www.elastic.co/guide/en/kibana/current/settings.html)
[service account](https://www.elastic.co/guide/en/elasticsearch/reference/current/service-accounts.html)
## 访问
127.0.0.1:5601

## 8.7版本不允许使用默认账号访问es
需要创建新的连接账号访问
```text
Error: [config validation of [elasticsearch].username]: value of "elastic" is forbidden. 
This is a superuser account that cannot write to system indices that Kibana needs to function. 
Use a service account token instead. Learn more: https://www.elastic.co/guide/en/elasticsearch/reference/8.0/service-accounts.html
```

## 8.7版本建议使用service token替代传统账号密码访问方式
```text
# Kibana can also authenticate to Elasticsearch via "service account tokens".
# Service account tokens are Bearer style tokens that replace the traditional username/password based configuration.
# Use this token instead of a username/password.
# elasticsearch.serviceAccountToken: "my_token"
```

