#!/bin/bash

set -x

sudo mkdir /spool
sudo chmod 777 /spool
sudo useradd -m -s /bin/bash $NEWUSER
sudo mkdir -p /home/$NEWUSER/.ssh
sudo chown $NEWUSER:$NEWUSER /home/$NEWUSER/.ssh
sudo mv /tmp/$NEWUSER.pub /home/$NEWUSER/.ssh/authorized_keys
sudo chown $NEWUSER:$NEWUSER /home/$NEWUSER/.ssh/authorized_keys
sudo chmod 600 /home/$NEWUSER/.ssh/authorized_keys
sudo usermod -aG sudo $NEWUSER
sudo sh -c "echo '$NEWUSER  ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers"

sudo apt update
sudo apt upgrade -y
sudo apt install -y apt-transport-https ca-certificates openvpn easy-rsa

sudo mkdir /root/easy-rsa
sudo ln -s /usr/share/easy-rsa/* /root/easy-rsa/

