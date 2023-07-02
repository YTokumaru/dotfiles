#!/bin/bash

# This file assumes that the dotfiles are cloned in ~/dotfiles

dotfiles_dir=~/dotfiles

# Back up the existing dotfiles
mkdir -p $dotfiles/backup
mv ~/.zshrc $dotfiles/backup
mv ~/.tmux.conf $dotfiles/backup
mv ~/.config $dotfiles/backup
mv ~/.latexmkrc $dotfiles/backup

# Create the symbolic links
ln -s $dotfiles_dir/zshrc ~/.zshrc
ln -s $dotfiles_dir/tmux.conf ~/.tmux.conf
ln -s $dotfiles_dir/config ~/.config
ln -s $dotfiles_dir/latexmkrc ~/.latexmkrc

# Change the deafult shell
chsh -s $(which tmux)