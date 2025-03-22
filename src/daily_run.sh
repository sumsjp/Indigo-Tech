#!/bin/bash

# 取得腳本所在目錄
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# 切換到腳本目錄
cd "$SCRIPT_DIR" || exit

git pull
uv run src/update_youtube.py
git pull
git add ..
git commit -am update_youtube
git push

