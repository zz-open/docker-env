#!/bin/bash

function EnterContainer(){
  docker-compose exec resty bash
}

EnterContainer