#!/bin/bash

prefix="jdbc:sqlite:"
if [[ "$EFAK_DB_URL" == *"$prefix"* ]]; then
  db_dir=$(echo ${EFAK_DB_URL#${prefix}} | sed -e "s/\/[^\/]*$//")
  mkdir -p $db_dir
fi

envsubst < "/tmp/system-config.properties" > "/opt/efak/conf/system-config.properties"
bash /opt/efak/bin/ke.sh start
sleep 3
tail -f /opt/efak/kms/logs/catalina.out