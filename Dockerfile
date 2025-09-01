# 第一步：使用轻量级 nginx 镜像
FROM nginx:alpine

# 可选：在构建时将工作目录置为默认 nginx 静态文件路径
WORKDIR /usr/share/nginx/html

# 将本地项目内容（HTML、JS、资源等）复制到镜像中
COPY . .

# 暴露端口（默认 nginx 会监听 80）
EXPOSE 80

# 启动 nginx 服务，走前台模式
CMD ["nginx", "-g", "daemon off;"]
