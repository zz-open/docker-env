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

# COPY qinghua-debian-bookworm-sources.list /etc/apt/sources.list
# RUN cat /etc/apt/sources.list
# RUN apt-get clean && \
#     apt-get update

# USER jenkins
# RUN jenkins-plugin-cli --plugins "localization-zh-cn blueocean docker-workflow gitlab-plugin docker-plugin publish-over-ssh"