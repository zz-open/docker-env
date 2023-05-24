#!/bin/bash

function EnterContainer(){
  docker exec -it golang bash
}

EnterContainer