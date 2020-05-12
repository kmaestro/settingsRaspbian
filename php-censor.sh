#!/usr/bin/env zsh

sudo cp ./php-censor.conf /etc/nginx/sites-available/php-censor.loc
sudo ln -s /etc/nginx/sites-available/php-censor.loc /etc/nginx/sites-enabled
git clone https://github.com/php-censor/php-censor.git ~/php-censor
cd ~/php-censor
git checkout pre-release-2.0
composer u
