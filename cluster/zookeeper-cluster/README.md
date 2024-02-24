# zookeeper cluster
[docker hub](https://hub.docker.com/_/zookeeper)
```text
  #docker exec -it --user root zookeeepr bash && cd /bin

  #查看zookeeper集群状态
  #./bin/zkServer.sh status
  #  docker-compose up -d zookeeper zoonavigator
  #open -a "/Applications/Google Chrome.app" "http://localhost:9110"
  #open -a "/Applications/Google Chrome.app" "http://localhost:9111"
  #open -a "/Applications/Google Chrome.app" "http://localhost:8048"
```

# Zookeeper Assistant 可视化(收费)
[Zookeeper Assistant mac 安装](http://www.redisant.cn/blogs/install_pa.html)
[Zookeeper Assistant 下载](https://github.com/chenjing1294/zookeeper-assistant-release/releases)

本地连接： 127.0.0.1:12181,127.0.0.1:12182,127.0.0.1:12183

sudo xattr -rd com.apple.quarantine /Applications/ZooKeeper\ Assistant.app


# PrettyZoo [github](https://github.com/vran-dev/PrettyZoo/releases)

sudo xattr -rd com.apple.quarantine /Applications/prettyZoo.app