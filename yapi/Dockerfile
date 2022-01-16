# 基于 alpine镜像构建
FROM node:alpine
# 镜像维护者的信息
LABEL MAINTAINER = '373045134@qq.com'
# 基础环境构建
# - 更新源
# - 安装基础环境包
# - 不用更改默认shell了,只要进入的镜像的时候指定shell即可
# - 最后是删除一些缓存
# - 克隆项目
# - 采用自动化构建不考虑国内npm源了 , 可以降低初始化失败的概率
# !! yapi 官方的内网部署教程: https://yapi.ymfe.org/devops/index.html

RUN mv /etc/apk/repositories /etc/apk/repositories.bk && \
    echo "https://mirrors.ustc.edu.cn/alpine/latest-stable/main" >/etc/apk/repositories && \
    echo "https://mirrors.ustc.edu.cn/alpine/latest-stable/community" >>/etc/apk/repositories
RUN apk update \
  && apk add --no-cache  git bash vim python python-dev gcc libcurl make \
  && npm install -g cnpm --registry=https://registry.npm.taobao.org \
  && cnpm install -g yapi-cli \
  && rm -rf /var/cache/apk/* \
  && mkdir /yapi && cd /yapi \
  && git clone https://github.com/YMFE/yapi.git vendors \
  && cnpm i -g yapi-cli \
  && cd /yapi/vendors && cnpm i --production;
# 工作目录
WORKDIR /yapi/vendors
# 配置yapi的配置文件
COPY config.json /yapi/
# 复制执行脚本到容器的执行目录
COPY entrypoint.sh /usr/local/bin/
# 写好的vim配置文件复制进去
COPY .vimrc /root/
# 向外暴露的端口
EXPOSE 3000

# 指定配置文件
ENTRYPOINT ["/bin/bash", "/usr/local/bin/entrypoint.sh"]