#!/bin/bash

echo "Criando e organizando diretórios..."

mkdir /publico
mkdir /adm
mkdir /des
mkdir /inf

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_DES
groupadd GRP_INF

echo "Criando usuários..."

useradd frederico -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd inacio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_DES
useradd marilsa -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_DES
useradd roberta -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_DES

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_INF
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_INF
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_INF

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_DES /des
chown root:GRP_INF /inf

chmod 770 /adm
chmod 770 /des
chmod 770 /inf
chmod 777 /publico

echo "Configuração concluída com sucesso!"
