#!/bin/bash

function EnterContainer(){
  docker-compose exec nsq bash
}

EnterContainer