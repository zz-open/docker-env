#!/bin/bash

function EnterContainer(){
  docker-compose exec etcd bash
}

EnterContainer