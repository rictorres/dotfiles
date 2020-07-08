#!/bin/bash

# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`

# Install native apps

brew install caskroom/cask/brew-cask

# daily
brew cask install spectacle
brew cask install rescuetime
brew cask install spotify
brew cask install slack
brew cask install caffeine
brew cask install simplenote
brew cask install the-unarchiver
brew cask install whatsapp
brew cask install mailspring
# brew cask install numi
# brew cask install cheatsheet

# dev
brew cask install visual-studio-code
brew cask install iterm2
brew cask install ngrok
brew cask install imagealpha
brew cask install imageoptim
brew cask install virtualbox
brew cask install postman
brew cask install sequel-pro
brew cask install docker

# browsers
brew cask install chrome
brew cask install firefox
brew cask install google-chrome-canary

# quick look
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlimagesize
brew cask install qlvideo

# less often
brew cask install droplr
brew cask install kap
brew cask install vlc
brew cask install gpgtools

# legacy

# brew cask install postico
# brew cask install psequel
# brew cask install steam

# not on cask but much wanted
# filezilla
# pastebox
# shazam
# wunderlist
# medis
