#!/bin/bash

function EnterContainer(){
  docker-compose exec beanstalkd bash
}

EnterContainer