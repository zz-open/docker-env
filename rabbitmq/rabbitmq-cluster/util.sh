#!/usr/bin/bash

SetMirrorQueue(){
  #  Ha-mode具有三个选项，all指将所有队列的信息存入所有节点，这种模式最安全，但也最浪费存储空间；exactly指由用户精确指定每个队列的复制数，当ha-mode设置为exactly,ha-params设置为2时表示“一主一从”，这种模式是官方推荐的；nodes指由用户指定副本所在的节点，这种模式极少被使用。
  #  x-queue-master-locator用于设置存储队列主节点的RabbitMQ节点。min-master指将队列主节点设置在队列数量最少的RabbitMQ节点，client-local指将队列主节点设置在当前客户端所在的RabbitMQ节点，random即随机选择节点。
  #  Ha-sync-mode用于镜像节点代替宕机主节点并创建新节点以弥补缺失节点时，设置新节点上数据的同步策略。automatic指自动地将新主节点上数据全部同步给新节点，manual指不同步新主节点上的老数据，只同步新产生的数据。由于节点间数据同步需要耗费时间，长时间的数据同步可能会影响服务的稳定性，但通常情况下RabbitMQ的节点堆积的数据量并不大，因此RabbitMQ官方推荐使用Automatic进行数据同步。
  #  Ha-sync-batch-size指节点间批量同步的数据量。
  #  Ha-promote-on-shutdown表示主动停止主节点的服务时，其他节点如何替代主节点。Always指其他节点总是能顺利地替代主节点，when-synced要求与原主节点数据完全一致的节点才能替代主节点。
  #  Ha-promote-on-failure表示异常情况下其他节点如何替代主节点，always和when-synced的含义与Ha-promote-on-shutdown中一致。

   #如果没有设置policy，在申明队列的时候（queue_declare方法）使用x-ha-policy这个参数设置的镜像队列是无效的。设置了policy正则规则，不使用x-ha-policy参数，只要满足正则规则的queue也会自动变成镜像队列，

   #在上面我们指定了 ha-mode 的值为 all ，代表消息会被同步到所有节点的相同队列中。这里我们之所以这样配置，因为我们本身只有三个节点，因此复制操作的性能开销比较小。 如果你的集群有很多节点，那么此时复制的性能开销就比较大，此时需要选择合适的复制系数。通常可以遵循过半写原则，即对于一个节点数为 n 的集群，只需要同步到 n/2+1 个节点上即可。 此时需要同时修改镜像策略为 exactly，并指定复制系数 ha-params，示例命令如下：
   # rabbitmqctl set_policy ha-two "^" '{"ha-mode":"exactly","ha-params":2,"ha-sync-mode":"automatic"}'
   # 参考链接：https://blog.csdn.net/Dome_/article/details/103948513
   cmd=rabbitmqctl set_policy --priority 0 -p '/' mirror_queue_policy_all --apply-to queues "^mirror_" '{"ha-mode":"all"}'
   cmd1=rabbitmqctl set_policy --priority 0 -p '/' mirror_queue_policy_all --apply-to queues "^mirror_" '{"ha-mode":"exactly","ha-params":3,"ha-sync-mode":"automatic"}'
   #docker exec rabbitmq1 /bin/bash -c '${cmd1}'
   return

#   docker exec rabbitmq1 /bin/bash -c 'rabbitmqctl list_queues'
#   docker exec rabbitmq2 /bin/bash -c 'rabbitmqctl list_queues'
#   docker exec rabbitmq3 /bin/bash -c 'rabbitmqctl list_queues'
}

#SetMirrorQueue

#docker compose exec rabbitmq1 bash
#docker compose exec rabbitmq2 bash
#docker compose exec rabbitmq3 bash

#EnablePlugin(){
#  docker exec rabbitmq1 /bin/bash -c 'rabbitmq-plugins enable rabbitmq_management'
#  sleep 5
#  docker exec rabbitmq2 /bin/bash -c 'rabbitmq-plugins enable rabbitmq_management'
#  sleep 5
#  docker exec rabbitmq3 /bin/bash -c 'rabbitmq-plugins enable rabbitmq_management'
#}


#SyncCookie(){
#  docker cp ./_common/.erlang.cookie rabbitmq1:/var/lib/rabbitmq/.erlang.cookie
#  docker exec rabbitmq1 /bin/bash -c 'chmod 600 /var/lib/rabbitmq/.erlang.cookie'

#  docker cp ./_common/.erlang.cookie rabbitmq2:/var/lib/rabbitmq/.erlang.cookie
#  docker exec rabbitmq2 /bin/bash -c 'chmod 600 /var/lib/rabbitmq/.erlang.cookie'

#  docker cp ./_common/.erlang.cookie rabbitmq3:/var/lib/rabbitmq/.erlang.cookie
#  docker exec rabbitmq3 /bin/bash -c 'chmod 600 /var/lib/rabbitmq/.erlang.cookie'
#}


#ClusterStatus(){
#  #check cluster status
#  echo "Check cluster status:"
#  docker exec rabbitmq1 /bin/bash -c 'rabbitmqctl cluster_status'
#  docker exec rabbitmq2 /bin/bash -c 'rabbitmqctl cluster_status'
#  docker exec rabbitmq3 /bin/bash -c 'rabbitmqctl cluster_status'
#
#  docker exec rabbitmq1 /bin/bash -c 'cat /var/lib/rabbitmq/.erlang.cookie'
#  docker exec rabbitmq2 /bin/bash -c 'cat /var/lib/rabbitmq/.erlang.cookie'
#  docker exec rabbitmq3 /bin/bash -c 'cat /var/lib/rabbitmq/.erlang.cookie'
#}

#CreateCluster(){
#  #重置主节点
#  echo "重置主节点..."
#  docker exec rabbitmq1 /bin/bash -c 'rabbitmqctl stop_app'
#  docker exec rabbitmq1 /bin/bash -c 'rabbitmqctl reset'
#  docker exec rabbitmq1 /bin/bash -c 'rabbitmqctl start_app'
#
#  #build cluster
#  echo "Starting to build rabbitmq cluster with two ram nodes."
#  docker exec rabbitmq2 /bin/bash -c 'rabbitmqctl stop_app'
#  docker exec rabbitmq2 /bin/bash -c 'rabbitmqctl reset'
#  docker exec rabbitmq2 /bin/bash -c 'rabbitmqctl join_cluster --ram rabbit@rabbitmq1'
#  docker exec rabbitmq2 /bin/bash -c 'rabbitmqctl start_app'
#
#  docker exec rabbitmq3 /bin/bash -c 'rabbitmqctl stop_app'
#  docker exec rabbitmq3 /bin/bash -c 'rabbitmqctl reset'
#  docker exec rabbitmq3 /bin/bash -c 'rabbitmqctl join_cluster --ram rabbit@rabbitmq1'
#  docker exec rabbitmq3 /bin/bash -c 'rabbitmqctl start_app'
#
#}

#EnableMirroring(){
#  docker exec -it rabbitmq1 rabbitmqctl set_policy ha-fed \
#      ".*" '{"ha-mode":"all", "federation-upstream-set":"all", "ha-sync-mode":"automatic", }' \
#      --priority 1 \
#      --apply-to queues
#}


#createAdminUser(){
#  echo "Starting to create user."
#  docker exec rabbitmq1 /bin/bash -c 'rabbitmqctl add_user admin admin@123'
#
#  echo "Set tags for new user."
#  docker exec rabbitmq1 /bin/bash -c 'rabbitmqctl set_user_tags admin administrator'
#
#  echo "Grant permissions to new user."
#  docker exec rabbitmq1 /bin/bash -c "rabbitmqctl set_permissions -p '/' admin '.*' '.*' '.*'"
#}

#OffLineNode(){
#  #第一种
#  #rabbitmqctl stop_app
#  #rabbitmqctl reset
#
#  #第二种，node先stop
#  #rabbitmqctl stop_app
#  #主节点 然后forget
#  #rabbitmqctl forget_cluster_node rabbit@rabbit2
#}