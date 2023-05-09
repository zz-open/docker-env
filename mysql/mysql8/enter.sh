#!/bin/bash

EnterContainer(){
  docker-compose exec mysql8 bash
}

EnterContainer