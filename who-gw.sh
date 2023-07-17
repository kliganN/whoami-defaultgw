#!/bin/bash

# Основной цикл программы
while true; do
    # Выводим меню выбора
    echo "Выберите действие:"
    echo "1. Show username"
    echo "2. Show IP address"
    echo "3. Show default gateway"
    echo "4. Exit"

    # Считываем выбор пользователя
    read selection

    # Обрабатываем выбор
    case $selection in
        1)
            # Показываем имя пользователя
            username=$(whoami)
            echo "User: $username"
            ;;
        2)
            # Показываем IP-адрес
            ip=$(ip a | grep 'inet ' | awk '{print $2}' | sed -n '2p')
            echo "IP address: $ip"
            ;;
        3)
            # Показываем шлюз по умолчанию
            gateway=$(ip route | awk '/default/ { print $3 }')
            echo "Gateway: $gateway"
            ;;
        4)
            # Выходим из цикла
            break
            ;;
        *)
            # Некорректный выбор
            echo "Error: incorrect selection"
            ;;
    esac
done

exit 0
