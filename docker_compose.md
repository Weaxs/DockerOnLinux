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
    
※ docker-compose.yml 文件必须是unix格式的文件且:后面需要有空格( )，同时完全符合缩进的规范。这里建议使用notepad++时，右下角的文件格式切换为Unix(LF)。

  
docker-compose.yml 详细参考：
  https://docs.docker.com/compose/gettingstarted/#step-3-define-services-in-a-compose-file
  
  
