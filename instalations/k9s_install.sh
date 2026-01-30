#!/bin/bash
sudo apt update && sudo apt upgrade -y
###############################################################################
#                                    BREW                                     #
###############################################################################
# Install Homebrew, The Missing Package Manager for macOS (or Linux)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# add Homebrew to your PATH
echo >> $HOME/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"' >> $HOME/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
# Install Homebrew's dependencies and GCC recommended
sudo apt-get install build-essential gcc -y
###############################################################################
#                                    K9S                                      #
###############################################################################
brew install k9s