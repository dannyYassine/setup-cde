#!/bin/bash

# install vscode server
curl -Lk 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' --output vscode_cli.tar.gz

tar -xf vscode_cli.tar.gz

#./code tunnel
#Or as a background service 
/code tunnel service install 

git config --global user.email “<your_email>”
git config --global user.name “<your username>”

sudo chmod -R 777 .

Sudo apt-get update

Sudo apt-get install make
Sudo apt-get install git -y

# install docker https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-debian-10
sudo apt update
sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
