#!/usr/bin/env bash

function EnterContainer(){
  docker exec -it kibana bash
}

EnterContainer