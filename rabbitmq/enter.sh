#!/bin/bash

function EnterContainer(){
  docker-compose exec rabbitmq bash
}

EnterContainer