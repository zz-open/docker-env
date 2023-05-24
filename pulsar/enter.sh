#!/bin/bash

function EnterContainer(){
  docker-compose exec pulsar bash
}

EnterContainer