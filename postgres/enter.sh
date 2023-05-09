#!/bin/bash

EnterContainer(){
  docker-compose exec postgres bash
}

EnterContainer