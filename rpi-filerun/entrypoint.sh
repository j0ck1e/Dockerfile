#!/bin/bash
echo "Downloading filerun.zip"
curl -L -o filerun.zip http://www.filerun.com/download-latest
echo "extracting filerun.zip"
unzip -o filerun.zip -d /var/www/html
echo "change owershiping"
chown -R www-data:www-data /var/www/html/
echo "removing filerun.zip"
rm -rf filerun.zip
echo "starting php-fpm"
php-fpm7.2 -D
echo "starting nginx"
nginx

tail -f /var/log/php7.2-fpm.log /var/log/nginx/*
