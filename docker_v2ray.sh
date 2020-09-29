# https://github.com/v2fly/docker
# https://hub.docker.com/r/v2fly/v2fly-core

docker pull v2fly/v2fly-core

docker run -itd --restart always --name v2ray -v /etc/v2ray/config.json:/etc/v2ray/config.json:ro -v /var/log/v2ray:/var/log/v2ray v2fly/v2fly-core

docker run -itd \
--restart always \
--name v2ray \
-v /etc/v2ray/config.json:/etc/v2ray/config.json:ro \
-v /var/log/v2ray:/var/log/v2ray \
v2fly/v2fly-core

