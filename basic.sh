#!/bin/bash

clear
echo "\e[1m\e[32m termux basic installation setup \e[0m\n"
echo ""
echo ""
echo "Press Enter To Continue"
read a1

pkg install git 
pkg install python
pkg install python2
termux-setup-storage
pkg install curl
pkg install openssh
pkg install pkp
pkg install pip
apt install toilet -y
apt install cowsay -y
apt install nano -y
apt install ruby -y
gem install lolcat
apt install git curl openssh openssl openssl-tool -y
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
figlet -f small FINISHED !!! | lolcat
echo
echo -e "\e[1m Now Run bash termux...!!!"
echo
echo -e "\e[1m\e[32m Developed by :\e[33m Tech Cochi"
