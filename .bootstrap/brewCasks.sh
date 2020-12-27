#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Disable auto update
echo "Disbaling brew auto update temporarily."
export HOMEBREW_NO_AUTO_UPDATE=1

# Install casks
brew install --cask balenaetcher
brew install --cask calibre
brew install --cask coconutbattery
brew install --cask drawio
brew install --cask firefox
brew install --cask google-backup-and-sync
brew install --cask google-chrome
brew install --cask intellij-idea
brew install --cask iterm2
brew install --cask java
brew install --cask java11
brew install --cask transmission
brew install --cask visual-studio-code
brew install --cask vlc

# Remove outdated versions from the cellar.
brew cleanup

# Enable auto update gain
echo "Enabling brew auto update again."
export HOMEBREW_NO_AUTO_UPDATE=0