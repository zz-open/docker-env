ARG NODE_VERSION=14
FROM node:${NODE_VERSION}

WORKDIR /usr/src/app

# 自定义安装脚本
COPY ./install.sh /install.sh
RUN chmod +x /install.sh
#RUN bash /install.sh && rm /install.sh

RUN npm install node-sass && npm install

EXPOSE 3000

CMD ["npm", "start"]