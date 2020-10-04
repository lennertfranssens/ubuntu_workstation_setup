#!/bin/bash

red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
end=$'\e[0m'

printf "|--------------------------------|\n"
printf "| Post Ubuntu Workstation Setup  |\n"
printf "|--------------------------------|\n"

printf "\n${yel}[INFO]${end} Install the vscode Remote - Containers extension\n"
# Note: you might need to reboot before the `vscode` command becomes available.
code --install-extension ms-vscode-remote.remote-containers

printf "\n${yel}[INFO]${end} Configure emacs config\n"
git clone git@github.com:lennertfranssens/emacs_config.git
config=$(cat emacs_config/REMOVE_BEFORE_DOT.emacs)
echo "${config}" > ~/.emacs
sudo rm -rf emacs_config

printf "\n${yel}[INFO]${end} Done with the setup!\n"
