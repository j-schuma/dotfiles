#!/usr/bin/env bash

# Install some tooling that is only available through git
# should be installed after all the brew tools have been installed
mkdir -p $HOME/.shell_tools

# Install enhancd
[ -d $HOME/.shell_tools/enhancd ] || git clone https://github.com/b4b4r07/enhancd $HOME/.shell_tools/enhancd
(cd $HOME/.shell_tools/enhancd; git pull https://github.com/b4b4r07/enhancd)

# Install fzf-tab-completion
[ -d $HOME/.shell_tools/fzf-tab-completion ] || git clone https://github.com/lincheney/fzf-tab-completion $HOME/.shell_tools/fzf-tab-completion
(cd $HOME/.shell_tools/fzf-tab-completion; git pull https://github.com/lincheney/fzf-tab-completion)

# this is not the best place for this ;)
# to some configuration that should be executed once

# installs completion and other things for fzf
# we assume this was previously installed with brew
$(brew --prefix)/opt/fzf/install

# change shell to bash from zsh
chsh -s /opt/homebrew/bin/bash

