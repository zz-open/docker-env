#!/usr/bin/env bash

function EnterContainer(){
  docker-compose exec nsq bash
}

EnterContainer