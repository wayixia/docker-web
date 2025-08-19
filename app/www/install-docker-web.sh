#!/bin/sh

# 安装docker-web-app

filepath=$(cd "$(dirname "$0")"; pwd)

# 当前docker-web应用名
appname=$(basename "$filepath")
conf=$appname.conf

echo $current_dir

# 使用相对目录的创建软连接
ln -s /app/$appname/nginx/$conf ../../nginx-sites-enabled/$conf



