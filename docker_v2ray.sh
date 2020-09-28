docker pull v2fly/v2fly-core

docker run --name v2ray -v /etc/v2ray/config.json:/etc/v2ray/config.json:ro v2fly/v2fly-core

docker run --name v2ray \
-v /etc/v2ray/config.json:/etc/v2ray/config.json:ro \
v2fly/v2fly-core
