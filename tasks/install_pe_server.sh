#!/bin/bash

#creating download diretory 
mkdir -p /home/centos/downloads

cd /home/centos/downloads

curl -JLo puppet-server.tar.gz 'https://pm.puppet.com/cgi-bin/download.cgi?dist=el&rel=8&arch=x86_64&ver=latest'
#curl -JLO 'https://pm.puppet.com/cgi-bin/download.cgi?dist=el&rel=8&arch=x86_64&ver=latest'

tar -xf puppet-server.tar.gz

cd puppet-e*

./puppet-enterprise-installer -c /home/centos/pe.conf
