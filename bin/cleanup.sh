#!/bin/bash
# This script cleans up the Linux environment by reversing changes made by the linux.sh script.

# Remove the vimrc file in the home directory
rm -f ~/.vimrc

# Remove the line 'source /.dotfiles/bashrc_custom' in the bashrc file in the home directory
sed -i '/source \/\.dotfiles\/bashrc_custom/d' ~/.bashrc

# Remove the .TRASH directory inside of the home directory
rm -rf ~/".TRASH"
