例子：

  docker-compose/
  |
  ├── nginx
  │   └── conf.d
  |       └── default.conf   ssl.conf
  |   └── certs
  |       └── fullchain.pem   privkey.pem
  ├── v2fly
  |   └── config.json
  |
  ├── mysql
  │   └── ...
  |
  └── docker-compose.yml
  
docker-compose.yml 详细参考：
  https://docs.docker.com/compose/gettingstarted/#step-3-define-services-in-a-compose-file
  
  
