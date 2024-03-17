#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).

brew install coreutils
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# Install latest Bash
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash

brew install bash-completion

# Install `wget` with IRI support.
brew install wget

# generic colouriser  http://kassiopeia.juls.savba.sk/~garabik/software/grc/
brew install grc

# Install more recent versions of some OS X tools
brew install vim --with-override-system-vi
brew install homebrew/dupes/nano
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# z hopping around folders
brew install z

# https://github.com/so-fancy/diff-so-fancy
brew install diff-so-fancy

# Install other useful binaries
brew install fzf
brew install git
brew install speedtest-cli
brew install tree
brew install ffmpeg
brew install mas
brew install exa # https://bsago.me/exa/
brew install ncdu # find where your diskspace went
brew install awscli
brew install bat
brew install jq
brew install terraform
brew install lsd # https://github.com/Peltoche/lsd
brew install fnm # node version manager

brew install rust
brew install deno

brew install zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Remove outdated versions from the cellar
brew cleanup
