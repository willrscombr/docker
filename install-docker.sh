# Faz o dawnload do script na url mencinada e executa via sh
wget -qO- https://get.docker.com/ | sh
# Executa um container de testes
docker container run hello-world&
# Faz o download do docker-compose
curl -L https://github.com/docker/compose/releases/download/1.28.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
# Pemiote executar de execução
chmod +x /usr/local/bin/docker-compose
# Verifica versão
docker-compose version
# Permite executar o docker sem ser root
usermod -aG docker $(whoami)
# Habilita modo experimental do docker deploy -c
echo DOCKER_OPTS="--experimental=true" >> /etc/docker/daemon.json
# Restart docker  
systemctl restart docker
