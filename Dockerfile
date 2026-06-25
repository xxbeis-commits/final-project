# 使用 Nginx 作为基础镜像（轻量级的 Web 服务器）
FROM nginx:alpine

# 设置工作目录
WORKDIR /usr/share/nginx/html

# 删除 Nginx 默认的页面
RUN rm -rf ./*

# 把我们的网站文件复制到 Nginx 的网页目录
COPY index.html .
COPY profile.jpg .

# 暴露 80 端口
EXPOSE 80

# 启动 Nginx（Nginx 镜像默认已经有启动命令，这行可以省略，写上更清楚）
CMD ["nginx", "-g", "daemon off;"]