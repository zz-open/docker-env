#!/usr/bin/env bash

function EnterContainer(){
  docker exec -it elasticsearch bash
}

EnterContainer