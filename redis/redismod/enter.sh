#!/bin/bash

function EnterContainer(){
  docker-compose exec redismod bash
}

EnterContainer