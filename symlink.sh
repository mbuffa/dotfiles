#!/usr/bin/env bash
cd home

$PWD = `pwd`

ln -s $PWD/.zshrc ~/
ln -s $PWD/.gitconfig ~/
ln -s $PWD/.bin ~/
ln -s $PWD/.config/sublime-text-3/Packages/User ~/.config/sublime-text-3/Packages/
