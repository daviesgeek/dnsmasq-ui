#!/bin/bash

# # # #
# Installs the dnsmasq web ui
# # # #

echo 'Updating apt-get...'
sudo apt-get update

echo 'Installing nginx & PHP...'
sudo apt-get install -y nginx php-fpm

echo 'Setting up nginx config...'
sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.old
sudo ln -s ./nginx.conf /etc/nginx/sites-available/default

echo 'Restarting nginx...'
sudo /etc/init.d/nginx reload
