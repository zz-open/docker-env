# Rabbitmq Local
- [rabbitmq-delayed-message-exchange github](https://github.com/rabbitmq/rabbitmq-delayed-message-exchange)

# RabbitMQ登录提示User can only log in via localhost
```text
RabbitMQ默认只有一个guest帐号，guest帐号只能在RabbitMQ安装服务器上登录，
在其它服务器用guest登录提示User can only log in via localhost。

COOKIE新版本不能通过环境变量设置，需要直接把.erlang.cookie文件赋值，并且注意权限
```