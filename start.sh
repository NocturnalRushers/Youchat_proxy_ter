#!/bin/bash

# 安装依赖
npm install

# 设置环境变量
export PASSWORD=
export https_proxy=
export PORT=8080
export AI_MODEL=
export USE_CUSTOM_MODE=false
# 运行程序
node index.mjs

# 暂停，等待用户输入
read -p "按回车继续"
