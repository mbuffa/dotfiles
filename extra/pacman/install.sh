#!/usr/bin/env bash

USAGE="Usage (as root): ./install.sh list-of-packages"

if [ $# = 0 ]; then
  echo "$USAGE"
  exit 1;
fi

if [ $# = 2 ]
then
  PKGLIST=$(sort $1)
  $2 -S --needed $PKGLIST
else
  PKGLIST=$(comm -12 <(pacman -Slq|sort) <(sort $1) )
  pacman -S --needed $PKGLIST
fi
