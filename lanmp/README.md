# LANMP
```text
linux+apache2+nginx+php-fpm环境
```

- 根据[laradock](https://github.com/laradock/laradock)修改

- [docker compose官网](https://docs.docker.com/compose/compose-file/compose-file-v3/)

# 修改项
```text
1. nginx.conf记得添加underscores_in_headers on;
2. include /etc/nginx/sites-available/other/*.conf;

```