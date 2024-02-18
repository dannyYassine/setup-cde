#!/bin/bash

## Install vscode server
curl -Lk 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' --output vscode_cli.tar.gz
tar -xf vscode_cli.tar.gz

## Run code server inline or background

# Inline
#./code tunnel

# Background
./code tunnel service install
# Monitor service
./code tunnel service log

## Set git info
git config --global user.email “<your_email>”
git config --global user.name “<your username>”

## Set writable permissions
sudo chmod -R 777 .

## Install dependencies
sudo apt-get update
Sudo apt-get install make
Sudo apt-get install git -y

## Install docker https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-debian-10
## assuming on debian
sudo apt update
sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
