# ELASTICSEARCH API
[索引API学习](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices.html)
[文档API学习](https://www.elastic.co/guide/en/elasticsearch/reference/current/docs.html)

```shell
GET /_security/service/elastic/kibana

GET /_security/service/elastic/kibana/credential

GET /_security/service

GET /_cat/indices?pretty

POST /_security/service/elastic/kibana/credential/token/my-token
```

### 查询所有角色
GET /_security/role?pretty

### 查询所有节点信息
GET _cat/nodes?v

# API
### 测试是否安装成功
curl --cacert config/certs/http_ca.crt -u elastic https://localhost:9200

### 查询索引信息
curl -u elastic:changeme -XGET http://127.0.0.1:9200/_cat/indices?v

### 修改密码
curl -H "Content-Type:application/json" -XPOST elastic:changeme 'http://127.0.0.1:9200/_xpack/security/user/kibana_system/_password' -d '{ "password" : "changeme" }'

### 查询所有用户
curl -u elastic:changeme -XGET http://127.0.0.1:9200/_security/user?pretty
注意：kibana用户不建议使用，替换为kibana_system
```text
{
  "elastic" : {
    "username" : "elastic",
    "roles" : [
      "superuser"
    ],
    "full_name" : null,
    "email" : null,
    "metadata" : {
      "_reserved" : true
    },
    "enabled" : true
  },
  "kibana" : {
    "username" : "kibana",
    "roles" : [
      "kibana_system"
    ],
    "full_name" : null,
    "email" : null,
    "metadata" : {
      "_deprecated_reason" : "Please use the [kibana_system] user instead.",
      "_reserved" : true,
      "_deprecated" : true
    },
    "enabled" : true
  },
  "kibana_system" : {
    "username" : "kibana_system",
    "roles" : [
      "kibana_system"
    ],
    "full_name" : null,
    "email" : null,
    "metadata" : {
      "_reserved" : true
    },
    "enabled" : true
  },
  "logstash_system" : {
    "username" : "logstash_system",
    "roles" : [
      "logstash_system"
    ],
    "full_name" : null,
    "email" : null,
    "metadata" : {
      "_reserved" : true
    },
    "enabled" : true
  },
  "beats_system" : {
    "username" : "beats_system",
    "roles" : [
      "beats_system"
    ],
    "full_name" : null,
    "email" : null,
    "metadata" : {
      "_reserved" : true
    },
    "enabled" : true
  },
  "apm_system" : {
    "username" : "apm_system",
    "roles" : [
      "apm_system"
    ],
    "full_name" : null,
    "email" : null,
    "metadata" : {
      "_reserved" : true
    },
    "enabled" : true
  },
  "remote_monitoring_user" : {
    "username" : "remote_monitoring_user",
    "roles" : [
      "remote_monitoring_collector",
      "remote_monitoring_agent"
    ],
    "full_name" : null,
    "email" : null,
    "metadata" : {
      "_reserved" : true
    },
    "enabled" : true
  }
}
```