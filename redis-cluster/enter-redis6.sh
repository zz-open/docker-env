#!/usr/bin/env bash

function EnterContainer(){
  docker exec -it redis6 bash
}

EnterContainer