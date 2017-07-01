#!/usr/bin/env bash

set -e

echo "This will setup the Pi as a wifi OLSR mesh client/gateway"

while true; do
  read -p "Do you wish to continue?" yn
    case $yn in
      [Yy]* ) break;;
      [Nn]* ) exit;;
      * ) echo "Please answer yes or no.";;
    esac
done

# Build OLSRd
cd /tmp
if [ ! -d olsrd/.git ]
then
  git clone https://github.com/OLSR/olsrd.git
else
  cd olsrd
  git pull
fi
cd /tmp/olsrd
make
cd -
