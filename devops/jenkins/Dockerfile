ARG JENKINS_VERSION=lts
FROM jenkins/jenkins:${JENKINS_VERSION}

LABEL maintainer="zz <373045134@qq.com>"

USER root

# 自定义 START ############################################

ARG JENKINS_SYNC_TIME=true
ARG JENKINS_CHANGE_SOURCES=false
ARG JENKINS_INSTALL_DOCKER=false
ARG JENKINS_SOURCES_LIST=/etc/apt/custom.sources.list

RUN if [ ${JENKINS_SYNC_TIME} = true ]; then \
    TimeZone=Asia/Shanghai \
    ln -snf /usr/share/zoneinfo/$TimeZone /etc/localtime && \
    echo $TimeZone > /etc/timezone \
;fi

COPY ./sources.list ${JENKINS_SOURCES_LIST_PATH_CONTAINER}

RUN if [ ${JENKINS_CHANGE_SOURCES} = true ]; then \
    cat ${JENKINS_SOURCES_LIST_PATH_CONTAINER} > /etc/apt/sources.list && \
    apt install apt-transport-https ca-certificates && \
    apt-get update && \ 
    apt-get install -y lsb-release \
;fi

# https://download.docker.com/linux/debian

RUN if [ ${JENKINS_INSTALL_DOCKER} = true ]; then \
    curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
    https://download.docker.com/linux/debian/gpg && \
    echo "deb [arch=$(dpkg --print-architecture) \
        signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
        https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/debian \
        $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list && \
    apt-get update && \
    apt-get install -y docker-ce-cli \
;fi

# 自定义 END ############################################

USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean docker-workflow"