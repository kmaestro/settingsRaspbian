#!/usr/bin/env zsh
if ! [[ "$1" ]]; then
    echo "Введите пароль"
    exit
fi
sudo apt update -y && sudo apt upgrade -y
sudo apt-get install mariadb-server -y
sudo apt-get install default-libmysqlclient-dev -y
sudo apt-get install libqt5sql5-mysql -y
sudo apt-get install libcrypto++-dev libcrypto++-doc libcrypto++-utils -y
sudo mysql -u root
UPDATE mysql.user SET plugin = 'mysql_native_password', Password = PASSWORD\('$1'\) WHERE User = 'root';
FLUSH PRIVILEGES;
exit