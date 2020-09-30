# https://hub.docker.com/_/mysql

# docker + mysql 占用内存比较大， 512M的机器可能会扛不住

docker run --name mysql-test -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d mysql

docker run --name mysql-test -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_USER=user -e MYSQL_PASSWORD=123456 -d mysql

docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci



docker exec -it mysql-test bash

docker logs mysql-test

