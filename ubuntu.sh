#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install apache2 -y

sudo systemctl start apache2
sudo systemctl enable apache2

sudo apt install php libapache2-mod-php php-mysql -y
cd /var/www/html

sudo wget https://wordpress.org/latest.tar.gz

sudo tar -xzf latest.tar.gz
sudo rm -rf latest.tar.gz

sudo mv wordpress/* .

sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

sudo systemctl restart apache2
echo "WordPress installation completed. You can access it at http://your_server_ip/"
