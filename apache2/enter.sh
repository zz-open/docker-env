#!/bin/bash

EnterContainer(){
  docker-compose exec apache2 bash
}

EnterContainer