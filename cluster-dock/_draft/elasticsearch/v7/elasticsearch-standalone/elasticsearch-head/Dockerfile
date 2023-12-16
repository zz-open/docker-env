FROM node
MAINTAINER Niko Bellic <niko.bellic@kakaocorp.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install -g grunt

COPY ./app/package.json /usr/src/app/package.json
RUN cnpm install

COPY ./app /usr/src/app

EXPOSE 9100

CMD grunt server
