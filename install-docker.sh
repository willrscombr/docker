wget -qO- https://get.docker.com/ | sh
docker container run hello-world
curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose\
2 -`uname -s`-`uname -m` > /usr/local/bin/docker-compose
3 chmod +x /usr/local/bin/docker-compose
docker-compose version
