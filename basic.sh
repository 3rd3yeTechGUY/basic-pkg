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
# 1. Create ProgressBar function
# 1.1 Input is currentState($1) and totalState($2)
function ProgressBar {
# Process data
	let _progress=(${1}*100/${2}*100)/100
	let _done=(${_progress}*4)/10
	let _left=40-$_done
# Build progressbar string lengths
	_done=$(printf "%${_done}s")
	_left=$(printf "%${_left}s")

# 1.2 Build progressbar strings and print the ProgressBar line
# 1.2.1 Output example:
# 1.2.1.1 Progress : [########################################] 100%
printf "\rProgress : [${_done// /#}${_left// /-}] ${_progress}%%"

}

# Variables
_start=1

# This accounts as the "totalState" variable for the ProgressBar function
_end=100

# Proof of concept
for number in $(seq ${_start} ${_end})
do
	sleep 0.1
	ProgressBar ${number} ${_end}
done
printf '\nFinished!\n'

figlet -f small FINISHED !!! | lolcat
echo
echo -e "\e[1m Now Run bash termux...!!!"
echo
echo -e "\e[1m\e[32m Developed by :\e[33m Tech Cochi"
