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



mc git:(main) ✗ dc logs -f mc-management
mc-management  | [Entrypoint] MySQL Docker Image 8.0.32-1.2.11-cluster
mc-management  | [Entrypoint] Starting ndb_mgmd
mc-management  | WARNING: --ndb-connectstring is ignored when mgmd is started with -f or config-file.
mc-management  | MySQL Cluster Management Server mysql-8.0.32 ndb-8.0.32
mc-management  | 2024-05-03 00:35:02 [MgmtSrvr] INFO     -- The default config directory '/usr/mysql-cluster' does not exist. Trying to create it...
mc-management  | 2024-05-03 00:35:02 [MgmtSrvr] INFO     -- Sucessfully created config directory
mc-management  | 2024-05-03 00:35:02 [MgmtSrvr] WARNING  -- at line 4: [DB] IndexMemory is deprecated, will use Number bytes on each ndbd(DB) node allocated for storing indexes instead
mc-management  | 2024-05-03 00:35:02 [MgmtSrvr] ERROR    -- at line 5: Parse error
mc-management  | 2024-05-03 00:35:02 [MgmtSrvr] ERROR    -- at line 5: Could not parse name-value pair in config file.
mc-management  | 2024-05-03 00:35:02 [MgmtSrvr] ERROR    -- Could not load configuration from '/etc/mysql-cluster.cnf'
➜  mc git:(main) ✗ 
