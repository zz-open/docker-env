#!/usr/bin/env bash

function EnterContainer(){
  docker exec -it kc-zookeeper bash
}

EnterContainer