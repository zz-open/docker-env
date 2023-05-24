#!/bin/bash

function EnterContainer(){
  docker-compose exec mysql57 bash
}

EnterContainer