#!/bin/bash

clear
echo "\e[1m\e[32m termux basic installation setup \e[0m\n"
echo ""
echo ""
echo "Press Enter To Continue"
read a1

SLEEP_DURATION=${SLEEP_DURATION:=1}  # default to 1 second, use to speed up tests

progress-bar() {
  local duration
  local columns
  local space_available
  local fit_to_screen  
  local space_reserved

  space_reserved=6   # reserved width for the percentage value
  duration=${1}
  columns=$(tput cols)
  space_available=$(( columns-space_reserved ))

  if (( duration < space_available )); then 
  	fit_to_screen=1; 
  else 
    fit_to_screen=$(( duration / space_available )); 
    fit_to_screen=$((fit_to_screen+1)); 
  fi

  already_done() { for ((done=0; done<(elapsed / fit_to_screen) ; done=done+1 )); do printf "▇"; done }
  remaining() { for (( remain=(elapsed/fit_to_screen) ; remain<(duration/fit_to_screen) ; remain=remain+1 )); do printf " "; done }
  percentage() { printf "| %s%%" $(( ((elapsed)*100)/(duration)*100/100 )); }
  clean_line() { printf "\r"; }

  for (( elapsed=1; elapsed<=duration; elapsed=elapsed+1 )); do
      already_done; remaining; percentage
      sleep "$SLEEP_DURATION"
      clean_line
  done
  clean_line
}

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
figlet -f small FINISHED !!! | lolcat
echo
echo -e "\e[1m Now Run bash termux...!!!"
echo
echo -e "\e[1m\e[32m Developed by :\e[33m Tech Cochi"
