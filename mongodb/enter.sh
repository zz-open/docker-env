#!/bin/bash

function EnterContainer(){
  docker exec -it mongodb bash
}

EnterContainer