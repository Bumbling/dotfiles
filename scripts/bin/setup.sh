#!/bin/bash
echo "Linking up the dotfiles to your home dir."
cd ~/.dotfiles/
stow bash emacs git scripts stow tests vim
cd -
echo "Complete."

