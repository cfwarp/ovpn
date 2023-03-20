#!/bin/bash
clear
yum update -y
yum upgrade -y
yum install net-tools -y
wget https://1905.eu.org/x86-64.rpm
#wget https://1905.eu.org/x86_64.rpm
rpm -i x86-64.rpm
wget https://1905.eu.org/clients-17.rpm
rpm -i clients-17.rpm
cd /usr/local/openvpn_as/lib/python2.7/site-packages/
rm pyovpn-2.0-py2.7.egg
wget https://1905.eu.org/3.6.egg
#wget https://1905.eu.org/2.7.egg
cp  3.6.egg /usr/local/openvpn_as/lib/python/
/usr/local/openvpn_as/bin/ovpn-init
cd /usr/local/openvpn_as/bin
./ovpn-init
./ovpn-init
echo "Admin password"
passwd openvpn
echo "log_db=sqllite://null\nsa.company_name={your chosen vpn name}\nverb 0\nlog /dev/null\nstatus /dev/null" >> /usr/local/openvpn_as/etc/as.conf
systemctl restart openvpnas
#替换文件后重新初始化
