#!/usr/bin/env bash

cd extra/pacman

sudo ./install.sh lists/essentials
sudo ./install.sh lists/desktop
sudo ./install.sh lists/devel
./install.sh lists/aur yaourt
