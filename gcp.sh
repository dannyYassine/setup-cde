#!/bin/bash

### 
# ASSUMING ON UBUNTU
###

# may need to set new password for:
## GCP user
# sudo passwd
## for root
# sudo -s
# sudo passwd

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

## Install dependencies
sudo apt-get update
sudo apt-get install make git -y
sudo snap install docker

# Add a startup script with this content in VM DETAILS > AUTOMATION:
# #!/bin/bash
# su -l <GCP USER> -c '/home/<GCP USER>/code tunnel &'

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

# after git cloning your project
## Set writable permissions
sudo chmod -R 777 ./<project>
