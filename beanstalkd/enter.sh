#!/bin/bash

EnterContainer(){
  docker-compose exec beanstalkd bash
}

EnterContainer