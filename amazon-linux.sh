#!/bin/bash

sudo yum update -y || sudo apt update -y

echo "Installing Apache..."
sudo yum install httpd -y || sudo apt install apache2 -y
sudo systemctl start httpd || sudo systemctl start apache2
sudo systemctl enable httpd || sudo systemctl enable apache2
