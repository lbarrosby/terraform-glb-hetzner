servers = [
  {
    name        = "server-1"
    image       = "ubuntu-20.04"
    server_type = "cpx21"
    location    = "ash"
    user_data   = <<-EOT
                  #!/bin/bash

                  # Mudar para o diretório /opt para iniciar a configuração
                  cd /opt

                  # Atualizar e instalar pacotes essenciais
                  apt-get update && apt-get upgrade -y
                  apt-get install -y \
                    curl \
                    wget \
                    apt-transport-https \
                    ca-certificates \
                    gnupg \
                    lsb-release \
                    jq  # Instala o jq para manipulação de JSON

                  # Instalar o Docker
                  curl -fsSL https://get.docker.com -o get-docker.sh
                  sh get-docker.sh
                  rm get-docker.sh  # Limpar script após execução

                  # Iniciar e habilitar o serviço Docker
                  systemctl enable docker
                  systemctl start docker

                  # Verificar se o Docker foi instalado corretamente
                  docker --version

                  # Instalar o Docker Compose via apt
                  apt-get install -y docker-compose
                  apt-get install -y golang-go

                  # Verificar se o Docker Compose foi instalado corretamente
                  docker-compose --version

                  # Permitir que o usuário atual use o Docker sem precisar de sudo
                  usermod -aG docker $USER

                  # Reiniciar a sessão para aplicar as alterações de grupo
                  newgrp docker

                  # Clonar repositórios necessários
                  git clone https://github.com/lbarrosby/prometheus.git
                  git clone https://github.com/lbarrosby/app-cache-node.git
                  git clone https://github.com/lbarrosby/app-cache-go.git

                  # Substituir localhost pelo IP público no arquivo de configuração do Prometheus
                  ip="$(curl -4 -s ifconfig.me | awk '{print $1}')"
                  sed -i "s/localhost/$ip/g" prometheus/prometheus.yml

                  # Subir containers com Docker Compose
                  docker-compose -f /opt/prometheus/docker-compose.yml up --build -d
                  docker-compose -f /opt/app-cache-node/docker-compose.yml up --build -d
                  docker-compose -f /opt/app-cache-go/app-globo-go/docker-compose.yml up --build -d

                  # Finalizar e limpar
                  echo "Serviços Docker e containers configurados com sucesso!"
                  EOT
  }
]

