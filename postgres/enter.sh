#!/usr/bin/env bash

function EnterContainer(){
  docker-compose exec postgres bash
}

EnterContainer