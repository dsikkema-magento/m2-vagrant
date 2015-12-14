#!/usr/bin/env bash

#Setup aliases
cp /vagrant/.bash_aliases /root
cp /vagrant/.bash_aliases /home/vagrant

apt-get update
add-apt-repository ppa:ondrej/php5-5.6
apt-get -y update
apt-get install -y apache2

# Setup the apache server for two urls for the magento application
rm -rf /var/www/html
ln -fs /vagrant/m2 /var/www/html

cp /vagrant/m2.dev.conf /etc/apache2/sites-available/m2.dev.conf
a2ensite m2.dev

cp /vagrant/m2.store2.dev.conf /etc/apache2/sites-available/m2.store2.dev.conf
a2ensite m2.store2.dev

a2enmod rewrite

# Setup database
debconf-set-selections <<< "mysql-server mysql-server/root_password password vagrant"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password vagrant"
apt-get install -y mysql-server-5.6 mysql-client-5.6

apt-get install -y php5 libapache2-mod-php5 php5-mhash php5-mcrypt php5-curl php5-cli php5-mysql php5-gd php5-intl php5-xdebug php5-xsl
echo "CREATE DATABASE magento" | mysql -u root -pvagrant

# Setup xdebug
rm /etc/php5/mods-available/xdebug.ini
cp /vagrant/xdebug.source.ini rm /etc/php5/mods-available/xdebug.ini

service apache2 restart
apt-get install -y git

# Get composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer


echo ". ~/custom-bach/bashrx\n" >> ~/.bashrc

