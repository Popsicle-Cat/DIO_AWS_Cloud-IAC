#!/bin/bash

echo Criando diretórios e atribuindo permissões...

mkdir -m 770 /adm /ven /sec
mkdir -m 777 /publico

echo Criando grupos...

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo Criando usuários e adicionando aos grupos pertencentes...

useradd carlos -m -G GRP_ADM -s /bin/bash
useradd maria -m -G GRP_ADM -s bin/bash
useradd joao -m -G GRP_ADM -s /bin/bash

useradd debora -m -G GRP_VEN -s /bin/bash
useradd sebastiana -m -G GRP_VEN -s /bin/bash
useradd roberto -m -G GRP_VEN -s /bin/bash

useradd josefina -m -G GRP_SEC -s /bin/bash
useradd amanda -m -G GRP_SEC -s /bin/bash
useradd rogerio -m -G GRP_SEC -s /bin/bash

echo Mudando grupos proprietarios de diretórios...

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
