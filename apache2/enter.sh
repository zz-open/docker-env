#!/usr/bin/env bash

function EnterContainer(){
  docker-compose exec apache2 bash
}

EnterContainer