#!/usr/bin/env bash

function ResetContainer() {
  rm -rf ../master1/data;
  rm -rf ../master1/logs;

  rm -rf ../slave1/data;
  rm -rf ../slave1/logs;

  rm -rf ../slave2/data;
  rm -rf ../slave2/logs;
}

ResetContainer