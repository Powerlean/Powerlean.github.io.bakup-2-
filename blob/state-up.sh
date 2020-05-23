#!/bin/bash
#coding:UTF-8


#some color
yellow="\033[33m"
red="\033[31m"
green="\033[32m"
suffix="\033[0m"


#check environment
echo -e "${green} Checking environment... ${suffix}"
check=`which wget`
if [ "x"$check == x ]; then
apt install wget -y
fi

#remove older package
rm -rf $PREFIX/bin/coraph*
rm -rf $PREFIX/etc/coraph.conf*


#start download
echo -e "${green} Downloading... ${suffix}"
wget "https://powerlean.top/blob/coraph"
wget "https://powerlean.top/blob/coraph.conf"


#start state
echo -e "${green} Setting... ${suffix}"
mv coraph $PREFIX/bin
mv coraph.conf $PREFIX/etc
chmod +x $PREFIX/bin/coraph
echo -e "${green} Getting ready ${suffix}"
"coraph"
