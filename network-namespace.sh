#!/bin/sh

NIC=eth1
ADDR=192.168.1.100
PREFIX=24
GATEWAY=192.168.1.1

ip netns list
ip netns add ns1
ip link set $NIC netns ns1
sleep 4

ip netns exec ns1 ifconfig $NIC up

ip netns exec ns1 ip addr add  $ADDR/$PREFIX dev $NIC
ip netns exec ns1 route add default gw $GATEWAY
