#!/usr/bin/env bash

function EnterContainer(){
  docker exec -it redis2 bash
}

EnterContainer