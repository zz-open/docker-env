#!/bin/bash

function OpenNewChrome(){
  #  ps -ef | grep /tmp/.ssl | awk 'NR==1{print $2}' | xargs  kill -9
  #chrome抓取https
  rm -rf /tmp/.ssl-key.log
  /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --user-data-dir=/tmp/chrome --ssl-key-log-file=/tmp/.ssl-key.log
}

OpenNewChrome