# ndb cluster
- [官方文档](https://dev.mysql.com/doc/refman/8.0/en/mysql-cluster-installation.html)
- [参考](https://blog.csdn.net/killerover84/article/details/79484064)
- [官方docker安装](https://dev.mysql.com/doc/mysql-cluster-excerpt/8.0/en/mysql-cluster-install-docker.html)
- [官方docker github](https://github.com/mysql/mysql-docker/tree/main/mysql-cluster)

## 架构
- management 1个节点
- data 4个节点
- sql 2个节点
- phpmyadmin


## 部署的注意事项
- windows下各种问题，请自行修改
- 容器名称禁止修改，配置文件中也用了
- nodeid禁止修改
- mysql密码禁止修改，因为sql文件中也用到了
- 建表的Engine=NDBCLUSTER, 禁止修改
- 大约30秒之后才可以启动完成
- 推荐使用自定义用户连接mysql操作

## sql转word表格
```sql
SELECT
	COLUMN_NAME 列名,
	COLUMN_TYPE 数据类型,
	CHARACTER_MAXIMUM_LENGTH 长度,
	IS_NULLABLE 是否为空,
	COLUMN_DEFAULT 默认值,
	COLUMN_COMMENT 备注 
FROM
	INFORMATION_SCHEMA.COLUMNS 
WHERE
	table_schema = 'supermarket' 
	AND table_name = 'supermarket'
ORDER BY ORDINAL_POSITION ASC
```