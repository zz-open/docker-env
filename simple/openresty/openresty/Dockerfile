# https://github.com/openresty/docker-openresty

FROM openresty/openresty

# 覆盖默认的nginx.conf
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

#RUN touch /var/log/messages
#COPY logrotate/nginx /etc/logrotate.d/
#
#ADD ./startup.sh /opt/startup.sh
#RUN sed -i 's/\r//g' /opt/startup.sh

EXPOSE 80 81 443