#!/bin/bash

echo "criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios... useradd usuário"
echo "criando diretório do usuário..."
echo "nomeando usuário..."
echo "adicionando ao grupo..."
echo "criando bash..."
echo "criando senha..."


useradd ana -c "ana_ADM" -s /bin/bash -m -p $(echo senha123 | openssl passwd --stdin) -G GRP_ADM
passwd ana -e

useradd bianca -c "bianca_ADM" -s /bin/bash -m -p $(echo senha123 | openssl passwd --stdin) -G GRP_ADM
passwd bianca -e

useradd carlos -c "carlos_ADM" -s /bin/bash -m -p $(echo senha123 | openssl passwd --stdin) -G GRP_ADM
passwd carlos -e

useradd debora -c "debora_VEN" -s /bin/bash -m -p $(echo senha123 | openssl passwd --stdin) -G GRP_VEN
passwd debora -e

useradd ester -c "ester_VEN" -s /bin/bash -m -p $(echo senha123 | openssl passwd --stdin) -G GRP_VEN
passwd ester -e

useradd fabio -c "fabio_VEN" -s /bin/bash -m -p $(echo senha123 | openssl passwd --stdin) -G GRP_VEN
passwd fabio -e

useradd gabi -c "gabi_SEC" -s /bin/bash -m -p $(echo senha123 | openssl passwd --stdin) -G GRP_SEC
passwd gabi -e

useradd humberto -c "humberto_SEC" -s /bin/bash -m -p $(echo senha123 | openssl passwd --stdin) -G GRP_SEC
passwd humberto -e

useradd igor -c "igor_SEC" -s /bin/bash -m -p $(echo senha123 | openssl passwd --stdin) -G GRP_SEC
passwd igor -e


echo "trocando grupo do diretório..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "trocando permissões..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
