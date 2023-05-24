#!/bin/bash

function EnterContainer(){
  docker-compose exec clickhouse bash
}

EnterContainer