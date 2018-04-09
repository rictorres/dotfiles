#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# daily
brew cask install spectacle
brew cask install dropbox
brew cask install droplr
brew cask install rescuetime
brew cask install flux
brew cask install thunderbird
brew cask install nylas-n1
brew cask install spotify
brew cask install airdroid
brew cask install franz
brew cask install slack
brew cask install discord
brew cask install caffeine

# dev
brew cask install iterm2
brew cask install ngrok
brew cask install exa # https://bsago.me/exa/
brew cask install sublime-text
brew cask install imagealpha
brew cask install imageoptim
brew cask install virtualbox
brew cask install vagrant
brew cask install postman
brew cask install postico
brew cask install psequel
brew cask install sequel-pro
brew cask install sourcetree
brew cask install medis
brew cask install mysqlworkbench

# fun
#brew cask install limechat
brew cask install miro-video-converter
brew cask install horndis # usb tethering

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
brew cask install screenflow4 # 4 specifically not 5.
#brew cask install vlc
brew cask install mplayerx
brew cask install gpgtools
brew cask install licecap
brew cask install utorrent
brew cask install skype
brew cask install steam
brew cask install filezilla
brew cask install the-unarchiver
brew cask install obs
brew cask install sim-daltonism
brew cask install screenhero

# not on cask but much wanted
# simplenote
# pastebox
# shazam
# pgmodeler
# wunderlist
