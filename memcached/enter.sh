#!/bin/bash

function EnterContainer(){
  docker-compose exec memcached bash
}

EnterContainer