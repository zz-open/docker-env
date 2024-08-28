ARG NODE_VERSION=20
FROM node:${NODE_VERSION} as build

LABEL maintainer="zz <373045134@qq.com>"

WORKDIR /app

COPY . ./
RUN npm run build

FROM nginx:alpine

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]