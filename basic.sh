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
progress-bar() {
  local duration=${1}


    already_done() { for ((done=0; done<$elapsed; done++)); do printf "▇"; done }
    remaining() { for ((remain=$elapsed; remain<$duration; remain++)); do printf " "; done }
    percentage() { printf "| %s%%" $(( (($elapsed)*100)/($duration)*100/100 )); }
    clean_line() { printf "\r"; }

  for (( elapsed=1; elapsed<=$duration; elapsed++ )); do
      already_done; remaining; percentage
      sleep 1
      clean_line
  done
  clean_line
}

figlet -f small FINISHED !!! | lolcat
echo
echo -e "\e[1m Now Run bash termux...!!!"
echo
echo -e "\e[1m\e[32m Developed by :\e[33m Tech Cochi"
