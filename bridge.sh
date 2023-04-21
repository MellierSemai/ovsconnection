#!/bin/bash

sudo ovs-vsctl add-br br1
sudo ifconfig br1 173.14.88.1 netmask 255.255.255.0 up
sudo ovs-docker add-port br1 eth1 dc1 --ipaddress=173.14.88.2/24
sudo ovs-docker add-port br1 eth1 dc2 --ipaddress=173.14.88.3/24

