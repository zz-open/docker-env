# tomcat8
- [tomcat github](https://github.com/apache/tomcat/tree/main/conf)

## 修改
### manager-gui
容器内部默认不会开启manager-gui,自行添加
```shell
vi tomcat-users.xml
```

添加以下内容
```xml
  <role rolename="manager-gui"/>
  <role rolename="manager-script"/>
  <role rolename="manager-jmx"/>
  <role rolename="manager-status"/>
  <user username="tomcat" password="tomcat" roles="manager-status,manager-gui,manager-script,manager-jmx"/>
```

### webapps
webapps目录默认是空的，默认程序在webapps.dist目录，复制内容到webapps目录
```shell
docker-compose exec -it bash -c "cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/"
```

### 403 Access Denied
```shell
vi /usr/local/tomcat/webapps/manager/META-INF/context.xml
```

注释掉以下内容
```xml
<Valve className="org.apache.catalina.valves.RemoteAddrValve"
         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />
```

### 重启tomcat
访问管理界面
```shell
http://192.168.200.253:8080/manager/html
```