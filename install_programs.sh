#!/bin/bash

red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
end=$'\e[0m'

printf "|--------------------------------|\n"
printf "|    Ubuntu Workstation Setup    |\n"
printf "|--------------------------------|\n"

printf "\n${yel}[INFO]${end} Install wget\n"
sudo apt install wget

printf "\n${yel}[INFO]${end} Install Google Chrome\n"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

printf "\n${yel}[INFO]${end} Install Spotify\n"
sudo snap install spotify

printf "\n${yel}[INFO]${end} Install emacs\n"
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update
sudo apt install emacs27

printf "\n${yel}[INFO]${end} Install Zoom\n"
sudo snap install zoom-client

printf "\n${yel}[INFO]${end} Install MS Teams\n"
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.5153_amd64.deb
apt install ./teams_1.3.00.5153_amd64.deb

printf "\n${yel}[INFO]${end} Install Slack\n"
sudo snap install slack

printf "\n${yel}[INFO]${end} Install Docker\n"
sudo apt install docker.io
sudo groupadd docker
sudo usermod -aG docker $USER

printf "\n${yel}[INFO]${end} Install Visual Studio Code\n"
sudo snap install code --classic

printf "\n${yel}[INFO]${end} Log Out and proceed with post_installation.sh\n"
