#!/bin/bash

function EnterContainer(){
  docker exec -it lanmp-2-apache2 bash
}

EnterContainer