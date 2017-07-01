#!/usr/bin/env bash

set -e

echo "This will setup the Pi as a wifi OLSR mesh client/gateway"

while true; do
  read -p "Do you wish to continue?" yn
    case $yn in
      [Yy]* ) make install; break;;
      [Nn]* ) exit;;
      * ) echo "Please answer yes or no.";;
    esac
done
