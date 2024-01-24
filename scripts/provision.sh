#!/usr/bin/env bash

apt-get install openjdk-11-jdk -qq
apt-get install neo4j -qq
sudo chmod 777 /etc/neo4j/neo4j.conf
sudo neo4j restart
echo "sleeping for 5 seconds"
sleep "5"

curl -S -s "https://github.com/SpecterOps/BloodHound/archive/refs/tags/v5.4.1.tar.gz" -L --output "bh-5.4.1.tar.gz"
tar zxvf bh-5.4.1.tar.gz
#curl -S -s "https://github.com/BloodHoundAD/BloodHound/releases/download/v4.3.1/BloodHound-linux-x64.zip" -L --output "bloodhound.zip"
#unzip -q -o "bloodhound.zip" 
#mv /home/vagrant/BloodHound-linux-x64/ /home/vagrant/bloodhound/ && chown vagrant.vagrant /home/vagrant/bloodhound/ -Rv
