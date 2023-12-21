ARG JENKINS_VERSION=lts
FROM jenkins/jenkins:${JENKINS_VERSION}

LABEL maintainer="zz <373045134@qq.com>"

USER root

#####################################
# Set Timezone
#####################################

ARG TZ=Asia/Shanghai
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
