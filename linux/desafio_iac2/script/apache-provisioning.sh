#!/bin/bash

echo "Atualizando e Instalando o servidor...."
# Atualizar o servidor
apt-get update && sudo apt-get upgrade -y

# Instalar o apache2 e unzip
apt-get install apache2 unzip -y

echo "Baixando e descompactando os arquivos da aplicação..."
# Baixar a aplicação
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp

# Descompactar a aplicação
unzip /tmp/main.zip -d /tmp

echo "Copiando os arquivos da aplicação e ativando a service apache"
# Copiar os arquivos da aplicação para o diretório padrão do apache
cp -R /tmp/linux-site-dio-main/* /var/www/html/

# ativando o servidor web
service apache2 start