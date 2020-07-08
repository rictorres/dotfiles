#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).

brew install coreutils
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash

brew install bash-completion

brew install homebrew/completions/brew-cask-completion

# Install `wget` with IRI support.
brew install wget --with-iri

# generic colouriser  http://kassiopeia.juls.savba.sk/~garabik/software/grc/
brew install grc

# Install more recent versions of some OS X tools
brew install vim --with-override-system-vi

# z hopping around folders
brew install z

# https://github.com/so-fancy/diff-so-fancy
brew install diff-so-fancy

# mysql autocomplete (https://github.com/dbcli/mycli)
brew install mycli

# mtr - ping & traceroute. best.
brew install mtr

    # allow mtr to run without sudo
    mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//') #  e.g. `/Users/paulirish/.homebrew/Cellar/mtr/0.86`
    sudo chmod 4755 $mtrlocation/sbin/mtr
    sudo chown root $mtrlocation/sbin/mtr


# Install other useful binaries
brew install fzf
brew install git
brew install imagemagick
brew install pv
brew install rename
brew install speedtest-cli
brew install tree
brew install zopfli
brew install ffmpeg
brew install terminal-notifier
brew install mas
brew install exa # https://bsago.me/exa/
brew install ncdu # find where your diskspace went
brew install awscli
brew install bat
brew install ansible
brew install jq
brew install terraform
brew install lsd # https://github.com/Peltoche/lsd

brew install zsh

# Remove outdated versions from the cellar
brew cleanup
