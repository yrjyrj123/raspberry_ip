#!/bin/bash

sudo service raspberry_ip stop
sudo update-rc.d -f raspberry_ip remove
sudo rm -rf /etc/init.d/raspberry_ip 
sudo rm -rf /usr/bin/raspberry_ip 
