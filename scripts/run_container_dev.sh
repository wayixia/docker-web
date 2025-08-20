#!/bin/bash


local_path=$(cd "$(dirname "$0")"; pwd)

docker run -d --name dockerwebdev \
	-v $local_path/../app:/app \
	-v $local_path/../nginx-sites-enabled:/etc/nginx/sites-enabled \
	-p 80:80 \
	-p 9000:9000 \
	wayixia/php-nginx-dev:phpnginx


#wayixia/php-nginx-dev:1.0
