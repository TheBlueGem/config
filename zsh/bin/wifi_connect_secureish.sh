#!/bin/bash

echo "Network name";
read -e network;

echo "Password";
read -s pass;

echo
echo "Connecto to ze network $network";

nmcli d wifi connect "$network" password $pass
# exit 0
