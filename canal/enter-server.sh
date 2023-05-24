#!/bin/bash

function EnterContainer(){
  docker-compose exec canal-server bash
}

EnterContainer