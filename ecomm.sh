#!/bin/bash
sudo yum -y update
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo yum install -y git
sudo rm -rf /var/www/html/*
sudo git clone https://github.com/ravi2krishna/tf-2305-2307.git /var/www/html