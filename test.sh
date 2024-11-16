#!/usr/bin/env bash

MYSQL_VERSION=8.3

if [[ ${MYSQL_VERSION} > '8.4.0-0.000' ]]; then
  echo '123'
else
  echo '456'
fi