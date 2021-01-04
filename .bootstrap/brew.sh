#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Disable auto update
echo "Disbaling brew auto update temporarily."
export HOMEBREW_NO_AUTO_UPDATE=1

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
brew install gawk
# Install a modern version of Bash.
brew install bash
brew install bash-completion@2
# Install starship prompt https://starship.rs/guide/#%F0%9F%9A%80-installation
brew install starship

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install some custom completions
kubectl completion bash >/usr/local/etc/bash_completion.d/kubectl
sudo curl -L https://raw.githubusercontent.com/docker/docker-ce/master/components/cli/contrib/completion/bash/docker -o /usr/local/etc/bash_completion.d/docker.sh
sudo curl -L https://raw.githubusercontent.com/docker/compose/master/contrib/completion/bash/docker-compose -o /usr/local/etc/bash_completion.d/docker-compose

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# Install fancy shell tools
brew install bat        # a cat alternative  
brew install bottom     # pretty resource monitor
brew install bmon       # a bandwith monitor
brew install duf        # nice disk ussage
brew install fd         # simpler find alternative
brew install fzf
brew install git-delta  # pretty git output
brew install htop
brew install jq
brew install jwt-cli
brew install lsd        # pretty ls alternative
brew install ripgrep    # fast and pretty grep
brew install ranger     # cli file manager
brew install tealdeer   # example focussed man pages  
brew install tmux
brew install watch
brew install watson     # cli time tracker
brew install xz         # compressing stuff


# Install alacritty/lsd fonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# Install dev tooling
brew install cookiecutter
brew install go
brew install jenv
brew install mongodb-community-shell
brew install mongodb-community@3.6
brew install node
brew install openjdk
brew install openjdk@11
brew install protobuf
brew install prototool

# set global python default
brew install pyenv
pyenv install --skip-existing 3.9.0
pyenv global 3.9.0

# intall powerline and k8s segment via pip
pip3 install powerline-status
pip3 install https://github.com/gkze/powerk8s/archive/master.tar.gz 

# Install k8s tooling
brew install helm
brew install helmfile
brew install k9s
brew install kns
brew install kubectx
brew install kubernetes-cli
brew install stern

# Install azure tooling
brew install azure-cli
brew install azure-functions-core-tools@3

# Install net tools
brew install mitmproxy 
brew install slurm
brew install transmission-cli

# Remove outdated versions from the cellar.
brew cleanup

# Enable auto update gain
echo "Enabling brew auto update again."
export HOMEBREW_NO_AUTO_UPDATE=0