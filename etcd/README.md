1.进入容器的命令：
cd /Users/xulei/jungle/docker-php56/mycontainer/etcd-cluster && docker exec -it etcd1  /bin/sh
cd /Users/xulei/jungle/docker-php56/mycontainer/etcd-cluster && docker exec -it etcd2  /bin/sh
cd /Users/xulei/jungle/docker-php56/mycontainer/etcd-cluster && docker exec -it etcd3  /bin/sh


2.查询集群的成员
etcdctl member list

结果:
b88f2459a94b1a4b, started, node2, http://172.16.239.101:2380, http://172.16.239.101:2379
e0d836b5e739392b, started, node1, http://172.16.239.100:2380, http://172.16.239.100:2379
e2c9d3801c40feda, started, node3, http://172.16.239.102:2380, http://172.16.239.102:2379

3.put和get
etcdctl put hello world  // 存在就覆盖，不存在就创建
etcdctl get hello

4.del
5.txn
6.watch
etcdctl watch hello // 当有put，del操作的时候可以监听到，无论值是否一致

7.lease租约
用于实现key定时删除功能。与Redis的定时删除功能基本一致。

etcdctl lease grant 60    // 60秒的租约
