# Debian
#######################################
# https://docs.docker.com/engine/install/debian/

# 1.Install using the repository
apt-get update

apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# 任意8位
apt-key fingerprint 0EBFCD88

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# 2.INSTALL DOCKER ENGINE

apt-get update
apt-get install docker-ce docker-ce-cli containerd.io

apt-cache madison docker-ce

apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io

docker run hello-world
