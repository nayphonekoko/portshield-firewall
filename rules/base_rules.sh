#!/bin/bash

# Flush existing rules
sudo iptables -F
sudo iptables -X

# Default policies
sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -P OUTPUT ACCEPT

# Allow loopback and established connections
sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# Allow SSH
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# Log and drop TCP SYN packets (for psad)
sudo iptables -A INPUT -p tcp --syn -j LOG --log-prefix "DROP INPUT: " --log-level 4
sudo iptables -A INPUT -p tcp --syn -j DROP

# Log and drop all other UDP packets
sudo iptables -A INPUT -p udp -j LOG --log-prefix "DROP INPUT: " --log-level 4
sudo iptables -A INPUT -p udp -j DROP

