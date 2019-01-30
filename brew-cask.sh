#!/bin/bash

# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`

# Install native apps

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# daily
brew cask install spectacle
brew cask install dropbox
brew cask install rescuetime
brew cask install flux
brew cask install thunderbird
brew cask install spotify
brew cask install franz
brew cask install slack
brew cask install caffeine
brew cask install simplenote
brew cask install the-unarchiver
brew cask install numi
brew cask install cheatsheet

# dev
brew cask install iterm2
brew cask install ngrok
brew cask install imagealpha
brew cask install imageoptim
brew cask install virtualbox
brew cask install postman
brew cask install sequel-pro
brew cask install sourcetree
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
brew cask install vlc
brew cask install gpgtools
brew cask install licecap
brew cask install utorrent
brew cask install filezilla

# legacy
#brew cask install droplr
#brew cask install sublime-text
#brew cask install postico
#brew cask install psequel
#brew cask install mysqlworkbench
#brew cask install skype
#brew cask install steam
#brew cask install sim-daltonism
#brew cask install screenhero
#brew cask install screenflow4 # 4 specifically not 5.
#brew cask install miro-video-converter
#brew cask install horndis # usb tethering

# not on cask but much wanted
# pastebox
# shazam
# pgmodeler
# wunderlist
# medis
