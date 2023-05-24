#!/bin/bash

function EnterContainer(){
  docker-compose exec nginx bash
}

EnterContainer