# 安装环境
# CentOS 7安装docker要求系统为64位、系统内核版本为 3.10 以上，以下命令查看
uname -r

# 1. 用yum安装
yum -y install docker
# 查看yum是否已安装
yum list installed |grep docker

# 2. 离线安装包模式
wget https://download.docker.com/linux/static/stable/x86_64/docker-19.03.9.tgz
# 解压
tar -zxvf docker-19.03.9.tgz
# 将docker文件复制到/urs/bin目录下
cp docker/* /usr/bin/
# 将目录中的docker.service文件复制到/etc/systemd/system目录下，将docker注册为service服务
# 给docker.service文件添加执行权限
chmod +x /etc/systemd/system/docker.service
# 重新加载service文件
systemctl daemon-reload

# 启动docker
systemctl start docker
# 设置开机自启
systemctl enable docker.service
# 查看docker服务状态
systemctl status docker
