FROM tomcat:latest

LABEL maintainer="zaizai <33045134@qq.com>"

COPY ./conf/ /usr/local/tomcat/conf


RUN apt-get update \
    && apt-get install -y vim


CMD ["catalina.sh", "run"]

EXPOSE 8080 8088 8099