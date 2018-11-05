#!/bin/bash

sudo apt install whois
sudo useradd -m -p `mkpasswd $1` -s /bin/bash deploy
sudo adduser deploy sudo