ARG XXJOB_VERSION=2.4.1
FROM docker.io/xuxueli/xxl-job-admin:${XXJOB_VERSION} as file

FROM openjdk:8-jre-slim
COPY --from=file /app.jar /app.jar
LABEL maintainer="zz <373045134@qq.com>"

ENV PARAMS=""
ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENTRYPOINT ["sh","-c","java -jar $JAVA_OPTS /app.jar $PARAMS"]
