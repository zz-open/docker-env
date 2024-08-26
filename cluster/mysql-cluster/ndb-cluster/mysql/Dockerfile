ARG MYSQL_CLUSTER_VERSION=latest
FROM container-registry.oracle.com/mysql/community-cluster:${MYSQL_CLUSTER_VERSION}

LABEL maintainer="zz <373045134@qq.com>"

# 容器编码不是utf-8,导致中文内容的sql语句乱码
ENV LANG C.UTF-8