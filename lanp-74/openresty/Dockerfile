# https://github.com/openresty/docker-openresty

FROM openresty/openresty

#ENV TZ=Asia/Shanghai
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 覆盖默认的nginx.conf
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 81 443