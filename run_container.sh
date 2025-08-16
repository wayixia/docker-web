#!/bin/bash

local_path=$(cd "$(dirname "$0")"; pwd)

docker run -d --name lonyda \
	-v $local_path/app:/app \
	-v $local_path/db:/var/lib/mysql \
       	-p 443:443 \
	-p 3306:3306 \
	php-nginx-dist:1.0
