#/bin/sh

# 安装docker-web-app

filepath=$(cd "$(dirname "$0")"; pwd)

# 当前docker-web应用名
appname=$(basename "$filepath")
conf=$appname.conf


if [[ "$1" == "--debug" ]]; then 
  #使用debug模式, 不需要配置ssl证书, 确实需要调试ssl，可自行手动更改$appname.debug.conf
  conf=$appname.debug.conf
fi


echo $conf

echo "Restart docker-web server after installation completed"
echo "======================================================"
echo "Installing app $appname to nginx server"

# 使用相对目录的创建软连接
ln -s /app/$appname/nginx/$conf ../../nginx-sites-enabled/$conf

if [ $? -ne 0 ]; then
  echo "发生错误。"
else
  echo "Installation is completed"
fi

