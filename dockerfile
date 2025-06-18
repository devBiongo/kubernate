FROM nginx:alpine

# 拷贝你自己的 nginx.conf 和 html 文件
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/

# 用非 root 用户（符合 OpenShift）
USER 1001

# 暴露端口
EXPOSE 8080

# 关键点：不使用官方 entrypoint.sh，而是直接启动 nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]