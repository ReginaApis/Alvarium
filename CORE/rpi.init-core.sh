#!/bin/bash
# rPi CORE SYSTEM & SERVICES INSTALLER :

# install all core system libs and drivers
# update and install all core system scripts
# run circuittree cfg scripts to install all base CTree system stuff
# download and install ubos virt container
# docker pull and run cozy docker images
#install docker 
adduser an0n

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -qy apt-transport-https ca-certificates wget software-properties-common build-essential python-pip git dialog xz-utils nodejs

wget https://download.docker.com/linux/debian/gpg 
sudo apt-key add gpg
echo "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee -a /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get -y install docker-ce
sudo systemctl enable docker
sudo systemctl start docker
#allow nonroot
sudo groupadd docker
sudo useradd an0n
sudo usermod -aG docker an0n

## SECURITY OS RUNNING W OPENVAS, SNORT KIT w DEFENSE
# install parrotsec docker
docker pull parrotsec/parrot
docker run -ti --rm --network host parrotsec/parrot

docker pull parrotsec/metasploit
docker run -ti --network host parrotsec/metasploit

cd ..
su
apt-get update
npm install -g dat
dat clone amd64 : dat://b1f714cdd60eb8cbedf9112ce37f8a5e9601fc0d3e1734af8901002adfe0ed74/
#amd64 onion : dat://86c5ad0c75022c459908348c44604e27c961d19fba8ed0395cbc7928f637185c/
#amd64 social instance : dat://231b24dbeef3c3f7b115b9c7cd02e416b382df0a1050ef66f94b988fc8dae92e/
# Mesh 
dat clone dat://e2ed9767d6ab64f4c43a2adbce65af225133fec7ba95737f0a2f6ae292ba358e/
#Mesh Client (unfree wifi drivers) dat://6d1b73d13b6f9b5c481c6dfd64be6aa58e1cd2d153a6bb04bbc177999ee9925e/

gpg --verify freedombone.tar.gz.sig

cd freedombone
git checkout stretch
make install
freedombone menuconfig 
#(or freedombone menuconfig-onion)

# build .iso to boot in VM
freedombone-image --setup debian
freedombone-image -t i386 -v meshclient

#--->

# cd /home/pirate/Cerium/CORE/ubos/

# download and install Ubos and setup virtualization container
# cd ubos/
# wget http://depot.ubos.net/yellow/armv7h/images/ubos_yellow_container-armv7h_LATEST.tar.xz
# tar -x -J -f ubos_yellow_container-armv7h_LATEST.tar.xz

cd ~/Cerium/

sh install.tools.sh
