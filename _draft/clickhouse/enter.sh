#!/usr/bin/env bash

function EnterContainer(){
  docker-compose exec clickhouse bash
}

EnterContainer