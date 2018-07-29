#!bin/bash

# Install host system scripts and services

su
mkdir /root/.cpanplus/custom-sources

cd ~/dCentral/Alvarium/Cerium/COMM/AirChat/

perl install-modules-airchat-debian.pl

cd ~/dCentral/Alvarium/Cerium/COMM/OOS/

# import OpenBook db into mysql-server:
mysql -u root -p -e "create database aCeriUmdb";

mysql -u root -p th3h1v3n0d3 aCeriUmdb < openbooktables.sql

cd /var/www/

sudo echo "<?php phpinfo(); ?>" | sudo tee index.php

# cd /home/pirate/Cerium/dCentral/LOCAL/cozy/

# docker pull cozy/full

cd ~/dCentral/Alvarium/Cerium/
