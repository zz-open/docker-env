#!/bin/bash

function EnterContainer(){
  docker-compose exec redis bash
}

EnterContainer