ARG ELK_VERSION

# https://www.elastic.co/guide/en/beats/filebeat/7.16/running-on-docker.html
FROM docker.elastic.co/beats/filebeat:${ELK_VERSION}

COPY --chown=root:filebeat filebeat.yml /usr/share/filebeat/filebeat.yml