#!/usr/bin/env bash
set -eo pipefail

HTTP_CA_CRT_PATH=/usr/share/elasticsearch/config/certs/http_ca.crt

if health="$(curl --cacert ${HTTP_CA_CRT_PATH} -u ${ELASTIC_USERNAME}:${ELASTIC_PASSWORD} "https://127.0.0.1:9200/_cat/health?h=status")"; then
	health="$(echo "$health" | sed -r 's/^[[:space:]]+|[[:space:]]+$//g')" # trim whitespace (otherwise we'll have "green ")
	if [ "$health" = 'green' ] || [ "$health" = "yellow" ]; then
		exit 0
	fi
	echo >&2 "unexpected health status: $health"
fi

exit 1