#!/usr/bin/env bash

function EnterContainer(){
  docker exec -it kazoo-kafka bash
}

EnterContainer