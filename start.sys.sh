#!bin/bash

#chmod +x /home/pirate/Cerium/COMM/hsmm-pi/install.sh

# Start all system scripts and services

cd /home/pirate/Alvarium/Cerium/CORE/

# FreeNode network services startup and run:
# cd /home/pirate/Cerium/CORE/freedombone/
cd freedombone
freedombone-mesh

# freedombone-client

# docker run -d -p 3456:444 bashrc/docker-freedombone

cd /home/pirate/Alvarium/Cerium/CORE/ubos/

systemd-nspawn --boot --network-veth --machine ubos --directory ubos

cd /home/pirate/Cerium/COMM/AirChat/

perl airchat.pl

# cd /home/pirate/Cerium/LOCAL/cozy/

# docker run -d -p 6500:443 cozy/full

cd /home/pirate/Alvarium/Cerium/
