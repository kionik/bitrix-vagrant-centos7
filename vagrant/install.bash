#!/usr/bin/env bash

#
#   Данный скрипт установит BitrixVM окружение.
#   В результате работы скрипта папка www должна заполниться дефолтными файлами (bitrixsetup.php, restore.php и прочее)
#   

# Устанавливаем wget
sudo yum -y install wget

# Устанавливаем nano
sudo yum -y install nano

# Скачиваем скрипт с офф сайта битрикс
sudo wget http://repos.1c-bitrix.ru/yum/bitrix-env.sh

# Меняем права на скрипт 
sudo chmod +x bitrix-env.sh

# Выключаем дерективу SElinux
sudo sed -i 's/enforcing/disabled/g' /etc/selinux/config /etc/selinux/config

echo "Virtual machine will reboot"

