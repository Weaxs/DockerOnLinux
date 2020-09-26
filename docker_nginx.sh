# https://hub.docker.com/_/nginx
# https://github.com/nginxinc/docker-nginx/issues

# download docker 
docker pull nginx

# search nginx version
docker search nginx

docker run --name my_nginx -p 80:80 -p 443:443 -d nginx

docker container ls
docker container ls -a

docker ps

docker start my_nginx
docker stop my_nginx
docker rm my_nginx
