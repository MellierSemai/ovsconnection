#!/bin/bash

CONTAINER_NAME="dc2"
IMAGE_NAME="ubuntu:latest"

docker build -t $IMAGE_NAME 

docker run -d --privileged --name $CONTAINER_NAME $IMAGE_NAME tail -f /dev/null
#bash -c "apt-get update && apt-get install openvswitch-switch -y"
#bash -c "apt-get update && apt-get install openvswitch-switch -y"
docker exec -it $CONTAINER_NAME  bash -c "apt-get update && apt-get install openvswitch-switch -y && apt-get install iproute2 -y && apt-get install net-tools -y && service openvswitch-switch start && ovs-vsctl add-br br1 && ip netns add vrf1 && ip netns add vrf2 && ip link add veth1 type veth peer name veth2 && ip link add veth3 type veth peer name veth4 && ip link set veth1 netns vrf1 && ip link set veth3 netns vrf2 && ip netns exec vrf1 ifconfig veth1 10.10.10.4/24 up && ip netns exec vrf2 ifconfig veth3 10.10.10.5/24 up && ovs-vsctl add-port br1 veth2 && ovs-vsctl add-port br1 veth4 && ifconfig veth2 up && ifconfig veth4 up && apt-get install iputils-ping -y && ovs-vsctl add-port br1 gre0 -- set interface gre0 type=gre option:remote_ip=173.14.88.2"
