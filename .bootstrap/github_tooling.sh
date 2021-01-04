#!/usr/bin/env bash

# Install some tooling that is only available through git
mkdir -p $HOME/.shell_tools

# Install enhancd
[ -d $HOME/.shell_tools/enhancd ] || git clone https://github.com/b4b4r07/enhancd $HOME/.shell_tools/enhancd
(cd $HOME/.shell_tools/enhancd; git pull https://github.com/b4b4r07/enhancd)

# Install fzf-tab-completion
[ -d $HOME/.shell_tools/fzf-tab-completion ] || git clone https://github.com/lincheney/fzf-tab-completion $HOME/.shell_tools/fzf-tab-completion
(cd $HOME/.shell_tools/fzf-tab-completion; git pull https://github.com/lincheney/fzf-tab-completion)
