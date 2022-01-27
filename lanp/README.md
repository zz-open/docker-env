#lanp(linux apache nginx php-fpm环境)
#支持php5.6 php7.4 php8.0
1.根据laradock中的配置修改成适合自己的
3.去掉了docker-in-docker相关的配置
4.修改apache2的日志目录
5.修改mysql的data目录
6.nginx.conf记得添加underscores_in_headers on;
7.include /etc/nginx/sites-available/other/*.conf;
9.docker compose官网：https://docs.docker.com/compose/compose-file/compose-file-v3/

