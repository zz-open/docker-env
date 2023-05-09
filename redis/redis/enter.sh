#!/bin/bash

EnterContainer(){
  docker-compose exec redis bash
}

EnterContainer