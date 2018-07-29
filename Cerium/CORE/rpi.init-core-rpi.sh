#!/bin/bash
# rPi CORE SYSTEM & SERVICES INSTALLER :

# install all core system libs and drivers
# update and install all core system scripts
# run circuittree cfg scripts to install all base CTree system stuff
# download and install ubos virt container
# docker pull and run cozy docker images

git clone https://gitlab.circuittree.io/circuittree/controller.git
cd controller
  rpi/bin/rpi-init
  rpi/bin/rpi-cfg

cd ..
https://code.freedombone.net/bashrc/freedombone.git
cd freedombone
git checkout stretch
make install
freedombone makeconfig
freedombone menuconfig

# freedombone --setup debian

# cd /home/pirate/Cerium/CORE/ubos/

# download and install Ubos and setup virtualization container
# cd ubos/
# wget http://depot.ubos.net/yellow/armv7h/images/ubos_yellow_container-armv7h_LATEST.tar.xz
# tar -x -J -f ubos_yellow_container-armv7h_LATEST.tar.xz

cd ~/Cerium/

sh install.tools.sh
