# https://docs.docker.com/compose/
# https://github.com/docker/compose

# 安装docker compose
curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# 查看 docker-compose.yml 或 docker-compose.yaml 是否合法
docker-compose config

# 启动
docker-compose up
# 后台启动
docker-compose up -d
