# mongo
- [dockerhub](https://hub.docker.com/_/mongo)
- [mongodb compass](https://www.mongodb.com/products/compass)
- [官网](https://www.mongodb.com)

## 测试 mongo
```shell
mongo admin

#使用rad_app库，如果不存在会创建
use test;

# 登录
db.auth("mongoadmin","secret");

#创建用户并赋予角色权限
db.createUser({user:'zaizai',pwd:'zz123456?',roles:[{role:'userAdmin',db:'test'},"readWrite"]});

mongo mongodb://mongoadmin:secret@127.0.0.1:27017

mongosh --host 127.0.0.1 -u mongoadmin -p secret --authenticationDatabase admin
```