#! /bin/bash

echo "Atualizando o Servidor....."

apt-get update
apt-get upgrade -y "Todas pergunta feita seja yes"
apt-get install apache2 -y
apt-get install unzip -y 


echo "Baixando e instalando os arquivos da aplicação......."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive//refs/heads/main.zip
unizp main.zip
cd linux-site-dio-main
cp -R * /var/www/html/