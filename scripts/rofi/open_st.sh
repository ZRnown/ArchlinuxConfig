#!/bin/bash

# 获取选择的程序名
selected=$(rofi -dmenu -p "Run: ")

# 在 st 中运行所选的程序
if [ -n "$selected" ]; then
    st -e "$selected"
fi
