#!/bin/bash

echo "criando usuários"

useradd fninja1 -c "planejamento" -s /bin/bash -m -p $(openssl passwd -6 senha12345)
passwd fnija1 -e

useradd fninja2 -c "planejamento" -s /bin/bash -m -p $(openssl passwd -6 senha12345)
passwd fninja2 -e

useradd fvops1 -c "devops" -s /bin/bash -m -p $(openssl passwd -6 senha12345)
passwd fvops1 -e

useradd fvops2 -c "devops" -s /bin/bash -m -p $(openssl passwd -6 senha12345)
passwd fvops2 -e

echo "Usuarios criados com sucesso..."


