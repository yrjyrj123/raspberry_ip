#!/bin/bash

sudo curl -sSL https://raw.githubusercontent.com/yrjyrj123/raspberry_ip/master/raspberry_ip.sh -o /usr/bin/raspberry_ip
sudo chmod 755 /usr/bin/raspberry_ip
sudo curl -sSL https://raw.githubusercontent.com/yrjyrj123/raspberry_ip/master/raspberry_ip.service -o /etc/init.d/raspberry_ip
sudo chmod 755 /etc/init.d/raspberry_ip
sudo update-rc.d raspberry_ip defaults
sudo service raspberry_ip start

exit 0
