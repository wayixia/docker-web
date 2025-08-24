#/bin/sh

filepath=$(cd "$(dirname "$0")"; pwd)

ckey=$filepath/cert/key.pem
ccert=$filepath/cert/cert.pem

openssl req -x509 -newkey rsa:2048 -keyout $ckey -out $ccert -days 36500 -nodes -subj "/C=CN/ST=Beijing/L=Beijing/O=Development Company/OU=IT Department/CN=example.com"

