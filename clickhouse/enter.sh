#!/bin/bash

EnterContainer(){
  docker-compose exec clickhouse bash
}

EnterContainer