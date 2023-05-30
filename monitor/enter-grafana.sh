#!/usr/bin/env bash

function EnterContainer(){
  docker exec -it grafana bash
}

EnterContainer