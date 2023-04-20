#!/bin/bash

echo 'Criando os grupos...'
groupadd financeiro
groupadd vendas
groupadd desenvolvimento

echo 'Criando os usuários...'
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) 
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) 
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) 

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) 
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) 
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) 

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) 
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) 
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) 

echo 'Adicionando usuários aos grupos...'
usermod -aG financeiro carlos
usermod -aG financeiro maria
usermod -aG financeiro joao

usermod -aG vendas debora
usermod -aG vendas sebastiana
usermod -aG vendas roberto

usermod -aG desenvolvimento josefina
usermod -aG desenvolvimento amanda
usermod -aG desenvolvimento rogerio


echo 'Criando diretórios de grupos...'
mkdir /home/financeiro
mkdir /home/vendas
mkdir /home/desenvolvimento
mkdir /home/publico

echo 'Definindo dono e grupo dos diretórios...'
chown root:financeiro /home/financeiro
chown root:vendas /home/vendas
chown root:desenvolvimento /home/desenvolvimento

echo 'Definindo permissões nos diretórios...'
chmod 770 /home/financeiro
chmod 770 /home/vendas
chmod 770 /home/desenvolvimento
chmod 777 /home/publico

echo 'Desafio Concluído com Sucesso....'