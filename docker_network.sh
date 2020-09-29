# https://juejin.im/post/6868086876751085581#heading-11

# view container connect
docker network inspect bridge

# 1. connect net when container create
docker run --net [net_name] ...

# 2. connect net whith container
docker network connect [net_name] [container_name]
