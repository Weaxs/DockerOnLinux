# https://hub.docker.com/_/nginx
# https://github.com/nginxinc/docker-nginx/issues

# download docker 
docker pull nginx

# search nginx version
docker search nginx

# create docker container
docker run --name my_nginx -p 80:80 -p 443:443 -d nginx
# 前面是机器上的目录(可变)，后面目录是docker容器上的目录
docker run \
  --name my_nginx \
  -d -p 80:80 \
  -v /usr/docker/my_nginx/html:/usr/share/nginx/html \
  -v /etc/docker/my_nginx/nginx.conf:/etc/nginx/nginx.conf:ro \
  -v /etc/docker/my_nginx/conf.d:/etc/nginx/conf.d \
  nginx
# create nginx with ssl certs
docker run --name my_nginx -d -p 80:80 -p 443:443 \
-v /etc/docker/my_nginx/conf.d/:/etc/nginx/conf.d \
-v /etc/letsencrypt/archive/example.org/fullchain.pem:/etc/letsencrypt/live/example.org/fullchain.pem:ro \
-v /etc/letsencrypt/archive/example.org/privkey.pem:/etc/letsencrypt/live/example.org/privkey.pem:ro \
-v /etc/letsencrypt/archive/example.org/chain.pem:/etc/letsencrypt/live/example.org/chain.pem:ro \
nginx
  

# enter into container
docker container exec -it my_nginx /bin/bash
# view container log
docker logs -f -t --tail 20 my_nginx

docker container ls
docker container ls -a

docker ps

docker start my_nginx
docker stop my_nginx
docker rm my_nginx
