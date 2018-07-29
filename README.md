# dCentral

To run this standalone wo install script:

#!bin/bash
# The Building of The Alvarium Cerium * The h1v3 n0d3 *

 Update/Upgrade system
 ----------------------
sudo apt-get update && apt-get upgrade -y

sudo apt-get install apt-transport-https ca-certificates wget software-properties-common build-essential dialog make fldigi libcpanplus-perl libpackage-constants-perl libhttp-server-simple-perl libcrypt-cbc-perl libcrypt-rijndael-perl librpc-xml-perl libxml-feedpp-perl liblwp-protocol-socks-perl libnet-twitter-lite-perl libnet-server-perl libapache2-mod-php5 php5 php-pear php5-curl php5-gd apache2 apache2-doc mysql-server php5-mysql vim-common connect-proxy tor torsocks tor-geoipdb libavahi-client3 resolvconf avahi-autoipd avahi-dnsconfd liblockfile-bin liblockfile1 libxt6 lockfile-progs monkeysphere avahi-utils python-pip git xz-utils nodejs -y


 Injecting SEED
 --------------
git clone https://github.com/ReginaApis/Alvarium.git

cd Alvarium/Cerium/CORE/

sh init-core.sh
