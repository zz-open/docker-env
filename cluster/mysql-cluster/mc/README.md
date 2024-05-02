# mysql cluster
- [官方文档](https://dev.mysql.com/doc/refman/8.0/en/mysql-cluster-installation.html)
- [参考](https://blog.csdn.net/killerover84/article/details/79484064)

## 架构
- management 1个
- data 4个
- sql 2个
- phpmyadmin


## 部署的注意事项
- 修改.env中的DATA_PATH_HOST
- 拷贝logs目录
- 容器名称禁止修改，配置文件中也用了
- nodeid禁止修改
- pma密码禁止修改，因为sql文件中也用到了
- 建表的Engine=NDBCLUSTER, 不能修改
- 大约20秒之后才可以启动完成
- 注意windows,linux切换不同操作系统，配置项要做相应修改
