#!/bin/bash

function EnterContainer(){
  docker-compose exec mysql8 bash
}

EnterContainer