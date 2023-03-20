#!/bin/bash
clear
yum update -y
yum upgrade -y
yum install net-tools -y
wget https://1905.eu.org/x86_64.rpm
rpm -i openvpn-as-2.5-CentOS7.x86_64.rpm
cd /usr/local/openvpn_as/lib/python2.7/site-packages/
rm pyovpn-2.0-py2.7.egg
wget https://1905.eu.org/2.7.egg
cd /usr/local/openvpn_as/bin
./ovpn-init
./ovpn-init
echo "Admin password"
passwd openvpn
echo "log_db=sqllite://null\nsa.company_name={your chosen vpn name}\nverb 0\nlog /dev/null\nstatus /dev/null" >> /usr/local/openvpn_as/etc/as.conf
