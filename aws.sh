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
# Tip: run `sudo loginctl enable-linger $USER` to ensure the service stays running after you disconnect.
sudo loginctl enable-linger $USER

## Set git info
git config --global user.email “<your_email>”
git config --global user.name “<your username>”

## Set writable permissions
sudo chmod -R 777 .

## Install dependencies
sudo apt-get update
sudo apt-get install make
sudo apt-get install git -y
sudo apt-get install snap -y
sudo snap install docker
