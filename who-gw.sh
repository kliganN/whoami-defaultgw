#!/bin/bash

# Делаем вывод юзера через переменную командой whoami
username=$(whoami)
echo "User: $username"


# Выводит шлюз по умолчанию через ip route и вырезкой через awk нужного столбца
gateway=$(ip route | awk '/default/ { print $3 }')
echo "Gateway: $gateway"
