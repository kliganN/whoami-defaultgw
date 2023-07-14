#!/bin/bash

username=$(whoami)
echo "User: $username"

gateway=$(ip route | awk '/default/ { print $3 }')
echo "Gateway: $gateway"
