#!/bin/bash

# Removendo usuários
echo "Removendo usuários..."
userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

# Removendo grupos
echo "Removendo grupos..."
groupdel financeiro
groupdel vendas
groupdel desenvolvimento

# Removendo diretórios
echo "Removendo diretórios..."
rm -rf /home/publico
rm -Rf /home/financeiro
rm -Rf /home/vendas
rm -Rf /home/desenvolvimento


echo "Remoção concluída!"
