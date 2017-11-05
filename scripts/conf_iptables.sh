#!/usr/bin/env bash

set -e
set -x

iptables -I INPUT -s 172.17.0.0/16 -p tcp --dport 4306 -j ACCEPT
iptables -I INPUT -s 172.17.0.0/16 -p tcp --dport 5673 -j ACCEPT
iptables -I INPUT -s 172.17.0.0/16 -p tcp --dport 37017 -j ACCEPT
iptables -I INPUT -s 172.17.0.0/16 -p tcp --dport 15673 -j ACCEPT

iptables -I INPUT -s 172.18.0.0/16 -p tcp --dport 4306 -j ACCEPT
iptables -I INPUT -s 172.18.0.0/16 -p tcp --dport 5673 -j ACCEPT
iptables -I INPUT -s 172.18.0.0/16 -p tcp --dport 37017 -j ACCEPT
iptables -I INPUT -s 172.18.0.0/16 -p tcp --dport 15673 -j ACCEPT


iptables -I INPUT -p tcp --dport 5000 -j ACCEPT
iptables -I INPUT -p tcp --dport 5002 -j ACCEPT

# service mysql stop
# service haproxy stop
# service rabbitmq-server stop
