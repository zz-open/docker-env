#Pulsar

https://blog.csdn.net/u010674101/article/details/121117678


账号密码：
pulsar-manager: http://127.0.0.1:9527/#
username: admin, password: pulsar

配置了集群url地址为pulsar-standalone
http://pulsar-standalone:8080

docker run -itd \
--name pulsar-standalone \
-p 6650:6650 \
-p 8080:8080 \
apachepulsar/pulsar:2.7.2 \
sh -c  "bin/pulsar standalone > pulsar.log 2>&1 & \
sleep 30 && bin/pulsar-admin clusters update standalone \
--url http://pulsar-standalone:8080 \
--broker-url pulsar://pulsar-standalone:6650 & \
tail -F pulsar.log"


docker run -itd \
--name pulsar-manager \
-p 9527:9527 -p 7750:7750 \
-e SPRING_CONFIGURATION_FILE=/pulsar-manager/pulsar-manager/application.properties \
--link pulsar-standalone \
--entrypoint="" \
apachepulsar/pulsar-manager:v0.2.0 \
sh -c  "sed -i '/^default.environment.name/ s|.*|default.environment.name=pulsar-standalone|' /pulsar-manager/pulsar-manager/application.properties & \
sed -i '/^default.environment.service_url/ s|.*|default.environment.service_url=http://pulsar-standalone:8080|' /pulsar-manager/pulsar-manager/application.properties & \
/pulsar-manager/entrypoint.sh & \
tail -F /pulsar-manager/pulsar-manager/pulsar-manager.log"