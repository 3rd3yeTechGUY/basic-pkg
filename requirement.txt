#!/bin/bash

clear
echo "Press Enter To Continue"
read a1

pkg install git 
pkg install python
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
figlet -f small FINISHED !!! | lolcat
echo
echo -e "\e[1m Now Run bash termux...!!!"
echo
echo -e "\e[1m\e[32m Developed by :\e[33m Tech Cochi"
