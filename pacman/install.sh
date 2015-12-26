#!/usr/bin/env bash

USAGE="Usage (as root): ./install.sh list-of-packages.txt"

if [ $# = 0 ]; then
  echo "$USAGE"
  exit 1;
fi

PKGLIST=$(comm -12 <(pacman -Slq|sort) <(sort $1) )

pacman -S --needed $PKGLIST
