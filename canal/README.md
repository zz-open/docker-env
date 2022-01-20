# canal-docker

1.canal-admin内部也有一个mysql,不想自己装的话也可以使用内部提供的
2.先开启binog
[mysqld]  
log-bin=mysql-bin #添加这一行就ok  
binlog-format=ROW #选择row模式  
server_id=1 #配置mysql replaction需要定义，不能和canal的slaveId重复  

3.添加canal用户
CREATE USER canal IDENTIFIED BY 'canal';    
GRANT SELECT, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'canal'@'%';  
-- GRANT ALL PRIVILEGES ON *.* TO 'canal'@'%' ;  
FLUSH PRIVILEGES; 

或者已有用户
show grants for 'canal' 

4.使用提供好的sql创建canal_manager database

5.目前conf下会包含canal.properties/canal_local.properties两个文件，考虑历史版本兼容性，默认配置会以canal.properties为主，如果要启动为对接canal-admin模式，可以有两种方式

指定为local配置文件
sh bin/startup.sh local
变更默认配置，比如删除canal.properties，重命名canal_local.properties为canal.properties


6.修改instance.properties
slaveID
username
password