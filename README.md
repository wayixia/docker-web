# docker-web
============
一个使用 Docker 容器化的 Web 应用项目，提供完整的 Web 开发环境，包括应用代码和 Nginx 配置。


# 依赖镜像
docker.io/wayixia/php-nginx-dist:phpnginx


# 安装
git clone https://github.com/wayixia/docker-web.git


## 功能特点

- 🐳 基于 Docker 容器化部署
- 🌐 完整的 Nginx 反向代理配置
- 📦 分离的应用代码和服务器配置
- 🚀 快速启动脚本
- 🔧 支持自定义配置和扩展

## 项目结构

```
docker-web/
├── app/                    # Web 应用代码目录
│   └── index.html         # 示例首页文件
├── nginx-sites-enabled/   # Nginx 站点配置文件
│   └── default.conf       # 默认站点配置
├── scripts/               # 容器管理脚本
│   └── create-container.sh # 容器创建脚本
└── README.md              # 项目说明文档
```

## 快速开始

### 前提条件

- 已安装 Docker
- 已安装 Git

### 安装步骤

1. 克隆项目到本地：
```bash
git clone https://github.com/wayixia/docker-web.git
cd docker-web
```

2. 运行创建容器脚本：
```bash
chmod +x scripts/create-container.sh
./scripts/create-container.sh
```

或者手动运行容器：
```bash
docker run -d -p 80:80 --name web-container \
  -v $(pwd)/app:/usr/share/nginx/html \
  -v $(pwd)/nginx-sites-enabled:/etc/nginx/conf.d \
  nginx:alpine
```

## 使用方法

访问 http://localhost 即可查看运行的 Web 应用。

### 自定义配置

1. 修改 Nginx 配置：
   - 编辑 `nginx-sites-enabled/default.conf` 文件
   - 重启容器：`docker restart web-container`

2. 修改应用代码：
   - 编辑 `app/` 目录中的文件
   - 更改会立即生效，无需重启容器

## 脚本说明

### create-container.sh

此脚本用于创建并启动 Web 容器，包含以下功能：
- 检查是否已存在同名容器
- 设置适当的卷挂载
- 使用 Nginx Alpine 镜像
- 映射端口 80

使用方法：
```bash
./scripts/create-container.sh
```

## 常用命令

- 停止容器：`docker stop web-container`
- 启动容器：`docker start web-container`
- 重启容器：`docker restart web-container`
- 查看容器日志：`docker logs web-container`
- 进入容器：`docker exec -it web-container /bin/sh`
- 删除容器：`docker rm web-container`

## 自定义开发

1. 添加新的站点配置：
   - 在 `nginx-sites-enabled/` 目录中创建新的 `.conf` 文件
   - 重启 Nginx 服务或容器

2. 部署多个应用：
   - 在 `app/` 目录下创建子目录存放不同应用
   - 配置相应的 Nginx 虚拟主机

## 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情

## 贡献

欢迎提交 Issue 和 Pull Request！

## 支持

如有问题，请通过以下方式联系：
- 创建 Issue
- 发送邮件至：wayixia@gmail.com


