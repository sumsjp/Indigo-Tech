#!/bin/bash

# 取得腳本所在目錄
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# 切換到腳本目錄
cd "$SCRIPT_DIR" || exit

git pull
python src/update_youtube.py
git pull
git add .
git commit -am .
git push

