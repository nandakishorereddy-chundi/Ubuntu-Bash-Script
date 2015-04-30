#!/bin/bash


# for update and upgrade
echo " <---------------------------------------------  UPDATING AND UPGRADING  --------------------------------------------->"
sudo apt-get update && sudo apt-get upgrade

# installing vim
echo " <---------------------------------------------  INSTALLING VIM  --------------------------------------------->"
sudo apt-get install vim

# installing flash player
echo " <---------------------------------------------  INSTALLING FLASH PLAYER  --------------------------------------------->"
sudo apt-get install flashplugin-installer

#installing vlc player
echo " <---------------------------------------------  INSTALLING VLC PLAYER  --------------------------------------------->"
sudo apt-get install vlc

# for setting .vimrc file
echo "set nu" >> .vimrc
echo "set cindent" >> .vimrc
echo "set autoindent" >> .vimrc

sudo apt-get update && sudo apt-get upgrade

# installing chrome
echo " <---------------------------------------------  INSTALLING CHROME  --------------------------------------------->"

if [ $(uname -m) == "x86_64" ]
then
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb	
	sudo apt-get -f install
	sudo dpkg -i google-chrome-stable_current_amd64.deb
else
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
	sudo apt-get -f install
	sudo dpkg -i google-chrome-stable_current_i386.deb
fi
sudo apt-get -f install

sudo apt-get update && sudo apt-get upgrade
# installing skype
echo " <---------------------------------------------  INSTALLING SKYPE  --------------------------------------------->"

if [ $(uname -m) == "x86_64" ]
then
	wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64
else
	wget http://www.skype.com/go/getskype-linux-beta-ubuntu-32
fi
sudo apt-get -f install
sudo dpkg -i getskype-*
sudo apt-get -f install
