#!/bin/bash

sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo amazon-linux-extras install php7.4 -y
sudo yum install php php-mysqlnd php-fpm -y
cd /var/www/html
sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xzf latest.tar.gz
sudo rm -rf latest.tar.gz
sudo mv wordpress/* .
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html

# Restart Apache to apply changes
sudo systemctl restart httpd
