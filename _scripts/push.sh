#!/usr/bin/env bash

function setProxy() {
  git config --global http.proxy 'socks5://127.0.0.1:19181'
  git config --global https.proxy 'socks5://127.0.0.1:19181'

  #git config --global http.proxy 'http://127.0.0.1:19180'
  #git config --global https.proxy 'http://127.0.0.1:19180'
}

function unsetProxy() {
   git config --global --unset http.proxy
   git config --global --unset https.proxy
}

function push() {
    unsetProxy
    setProxy
    git push origin main
}

push