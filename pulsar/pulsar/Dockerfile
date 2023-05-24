ARG PULSAR_VERSION
FROM apachepulsar/pulsar:${PULSAR_VERSION}

# 当需要修改环境变量时
RUN sh -c "bin/apply-config-from-env.py conf/standalone.conf"

CMD ["bin/pulsar", "standalone"]