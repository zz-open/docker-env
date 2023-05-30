#!/usr/bin/env bash

function EnterContainer(){
  docker-compose exec caddy bash
}

EnterContainer