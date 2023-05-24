#!/bin/bash

function EnterContainer(){
  docker exec -it kibana bash
}

EnterContainer