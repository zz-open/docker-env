#!/usr/bin/env bash

function EnterContainer(){
  docker exec -it kazoo-zookeeper bash
}

EnterContainer