# kafka-kraft-local
kraft模式

## 生成集群uuid
- 使用kafka提供的工具
```text
./bin/kafka-storage.sh random-uuid
# 输入结果如下
# xtzWWN4bTjitpL3kfd9s5g
```
- 自己生成
```text
#集群的uuid应为16个字节的base64编码,长度为22
echo -n "1234567890abcdef" | base64 | cut -b 1-22
# MTIzNDU2Nzg5MGFiY2RlZg
```

## 格式化存储目录
```text
./bin/kafka-storage.sh format -t xtzWWN4bTjitpL3kfd9s5g \
                       -c ./config/kraft/server.properties
# Formatting /tmp/kraft-combined-logs

注意：如果安装多个节点，每个节点都需要格式化。
```