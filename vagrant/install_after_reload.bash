#!/usr/bin/env bash

#
#   Данный скрипт установит BitrixVM окружение.
#   В результате работы скрипта папка www должна заполниться дефолтными файлами (bitrixsetup.php, restore.php и прочее)
#   

echo "The installation of the Bitrix environment started. This may take some time..."

# Производим устровку VMBitrix
sudo ./bitrix-env.sh -s -p -H bitrix -M 'mysql'

# Включаем phar-файлы
sudo cp /etc/php.d/20-phar.ini.disabled /etc/php.d/20-phar.ini

# Composer
echo "Installing Composer"

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/sbin/composer

echo "Env install finished"