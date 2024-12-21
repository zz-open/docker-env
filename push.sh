#!/usr/bin/env bash

echo "自动 push ..."
git add .
git commit -m "脚本自动push"
git push origin main
echo "自动 push 完毕"
