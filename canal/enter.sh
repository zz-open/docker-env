#!/usr/bin/env bash

function EnterContainer(){
  docker-compose exec canal-admin bash
}

EnterContainer