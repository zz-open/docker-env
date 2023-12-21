#!/usr/bin/env bash

function GetSqlFiles(){
  # 没有其他更合适的方法，暂时用svn
  svn export https://github.com/dtm-labs/dtm/branches/main/sqls
}

GetSqlFiles