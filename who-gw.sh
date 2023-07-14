#!/bin/bash

# Делаем вывод юзера через переменную командой whoami
username=$(whoami)
echo "User: $username"

# Вызывает команду ip a с сортировкой на локальный айпи адрес.
ip=$(ip a | grep 'inet ' | awk '{print $2}' | sed -n '2p')
echo "IP address: $ip"

# Выводит шлюз по умолчанию через ip route и вырезкой через awk нужного столбца
gateway=$(ip route | awk '/default/ { print $3 }')
echo "Gateway: $gateway"

