#!/bin/bash

function AddHosts(){
  echo  >> /etc/hosts
  echo "127.0.0.1  nginx.com" >> /etc/hosts
  echo "127.0.0.1  xlhttps.com" >> /etc/hosts
}

AddHosts