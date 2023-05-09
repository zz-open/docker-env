#!/bin/bash

EnterContainer(){
  docker-compose exec nginx bash
}

EnterContainer