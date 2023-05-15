#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Disable auto update
echo "Disbaling brew auto update temporarily."
export HOMEBREW_NO_AUTO_UPDATE=1

# Install casks
brew install --cask alacritty
brew install --cask balenaetcher
brew install --cask calibre
brew install --cask coconutbattery
brew install --cask cryptomator
brew install --cask drawio
brew install --cask firefox
brew install --cask font-fantasque-sans-mono
brew install --cask font-hack-nerd-font 
brew install --cask font-inconsolata 
brew install --cask google-chrome
brew install --cask grandperspective 
brew install --cask jetbrains-toolbox
brew install --cask keepassxc
brew install --cask postman
brew install --cask transmission
brew install --cask visual-studio-code
brew install --cask vlc

# Remove outdated versions from the cellar.
brew cleanup

# Enable auto update gain
echo "Enabling brew auto update again."
export HOMEBREW_NO_AUTO_UPDATE=0