#!/bin/bash

EnterContainer(){
  docker-compose exec memcached bash
}

EnterContainer