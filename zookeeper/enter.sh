#!/bin/bash

function EnterContainer(){
  docker-compose exec zookeeper bash
}

EnterContainer