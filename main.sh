#!/bin/bash

sudo apt update
sudo apt upgrade
sudo apt install net-tools
sudo apt install iproute2
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt update
sudo apt install docker-ce

sudo apt-get install openvswitch-switch -y

