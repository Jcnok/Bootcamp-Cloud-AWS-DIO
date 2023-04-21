#!/bin/bash

# Parar o serviço do Apache
service apache2 stop

# Remover os arquivos do Apache
rm -rf /var/www/html/*

# Desinstalar o Apache e o unzip
apt-get remove -y apache2 unzip

# Remover a aplicação baixada
rm -rf /tmp/main.zip /tmp/linux-site-dio-main

echo "Todos os procedimentos realizados pelo script apache-provisioning.sh foram removidos."
