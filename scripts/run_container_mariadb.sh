#!/bin/bash

local_path=$(cd "$(dirname "$0")"; pwd)

docker run -d --name dockerwebm \
	-v $local_path/../app:/app \
	-v $local_path/../nginx-sites-enabled:/etc/nginx/sites-enabled \
	-v $local_path/../db:/var/lib/mysql \
 	-p 443:443 \
	-p 3306:3306 \
	wayixia/php-nginx-dist:1.0
