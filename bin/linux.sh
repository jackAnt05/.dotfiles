#!/bin/bash
# This script sets up the Linux environment.

# Append any output from echo statements to a file called 'linuxsetup.log'.
exec >> linuxsetup.log 2>&1

# Check if the operating system type is Linux
if [[ $(uname) != "Linux" ]]; then
  echo "ERROR: This script only works on Linux systems." 
  exit 1
fi

# Create the '.TRASH' directory in the home directory if it doesn't exist already
mkdir -p ~/".TRASH"

# If the '.vimrc' file exists in the home directory, change its name to '.bup_vimrc'
if [[ -f ~/.vimrc ]]; then
  mv ~/.vimrc ~/.bup_vimrc
  echo "The current vimrc file was changed to '.bup_vimrc'." 
fi

# Redirect (overwrite) the contents of the etc/vimrc file to a file called '.vimrc' in the home directory
cp /etc/vimrc ~/.vimrc

# Add the statement 'source /dotfiles/etc/bashrc.custom' to the end of the .bashrc file located in the home directory
echo "source /dotfiles/etc/bashrc.custom" >> ~/.bashrc
