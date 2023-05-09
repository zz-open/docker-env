#!/bin/bash

EnterContainer(){
  docker-compose exec etcd bash
}

EnterContainer